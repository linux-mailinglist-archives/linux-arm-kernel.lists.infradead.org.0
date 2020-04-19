Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DE31AF843
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 09:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rMoxqqTC1fP/54YOjvhxJQfDN+7LnQfONCAI9/XdXTM=; b=RQhQxieNedQJgf
	HUwmW12XfSP2BXMXeDu+7WBKIGL1HURuB4EgM8R/wVZomZABbqF4sAyFj69ACg4Mw06HAEnM2Stmj
	3v7cv75rJlsqiKzzmCKkQQUN3ExkdwWGi/5254FHIZIukZyoxegKCCrLMtdhqryFQ9czlmlLApiUy
	DKmswlo4Apf/MvM8ivRsGazSrukqDHpX7p7MvojDfsrrnxDfkXKWuJP9XGIEgwdpx4g06DG/8FdwL
	eVAgDfPsGztBrGWUA2gOKdD62zItnCADb1poeidgZVfxVQ9HOgbbjpLqj9IzMuyspHXDJil3g2bOE
	Ph5M3DoFiKTdaf4UX/jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ4b3-0001PE-KK; Sun, 19 Apr 2020 07:42:33 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ4as-0001Ny-SB
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 07:42:25 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01358;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=37; SR=0;
 TI=SMTPD_---0TvywI99_1587281447; 
Received: from localhost(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TvywI99_1587281447) by smtp.aliyun-inc.com(127.0.0.1);
 Sun, 19 Apr 2020 15:30:48 +0800
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
To: pbonzini@redhat.com, tsbogend@alpha.franken.de, paulus@ozlabs.org,
 mpe@ellerman.id.au, benh@kernel.crashing.org, borntraeger@de.ibm.com,
 frankja@linux.ibm.com, david@redhat.com, cohuck@redhat.com,
 heiko.carstens@de.ibm.com, gor@linux.ibm.com,
 sean.j.christopherson@intel.com, vkuznets@redhat.com,
 wanpengli@tencent.com, jmattson@google.com, joro@8bytes.org,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, x86@kernel.org,
 hpa@zytor.com, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com
Subject: [PATCH] KVM: X86: Fix compile error in svm/sev.c
Date: Sun, 19 Apr 2020 15:30:47 +0800
Message-Id: <20200419073047.14413-1-tianjia.zhang@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_004223_609504_8DB9B940 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.7 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-s390@vger.kernel.org, tianjia.zhang@linux.alibaba.com,
 kvm@vger.kernel.org, linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGNvbXBpbGVyIHJlcG9ydGVkIHRoZSBmb2xsb3dpbmcgY29tcGlsYXRpb24gZXJyb3JzOgoK
YXJjaC94ODYva3ZtL3N2bS9zZXYuYzogSW4gZnVuY3Rpb24g4oCYc2V2X3Bpbl9tZW1vcnnigJk6
CmFyY2gveDg2L2t2bS9zdm0vc2V2LmM6MzYxOjM6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlv
biBvZiBmdW5jdGlvbgrigJhyZWxlYXNlX3BhZ2Vz4oCZIFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0
aW9uLWRlY2xhcmF0aW9uXQogICByZWxlYXNlX3BhZ2VzKHBhZ2VzLCBucGlubmVkKTsKICAgXn5+
fn5+fn5+fn5+fgoKVGhlIHJlYXNvbiBpcyB0aGF0IHRoZSAncGFnZW1hcC5oJyBoZWFkZXIgZmls
ZSBpcyBub3QgaW5jbHVkZWQuCgpTaWduZWQtb2ZmLWJ5OiBUaWFuamlhIFpoYW5nIDx0aWFuamlh
LnpoYW5nQGxpbnV4LmFsaWJhYmEuY29tPgotLS0KIGFyY2gveDg2L2t2bS9zdm0vc2V2LmMgfCAx
ICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gveDg2
L2t2bS9zdm0vc2V2LmMgYi9hcmNoL3g4Ni9rdm0vc3ZtL3Nldi5jCmluZGV4IDBlM2ZjMzExZDdk
YS4uM2VmOTllODdjMWRiIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9rdm0vc3ZtL3Nldi5jCisrKyBi
L2FyY2gveDg2L2t2bS9zdm0vc2V2LmMKQEAgLTEzLDYgKzEzLDcgQEAKICNpbmNsdWRlIDxsaW51
eC9oaWdobWVtLmg+CiAjaW5jbHVkZSA8bGludXgvcHNwLXNldi5oPgogI2luY2x1ZGUgPGxpbnV4
L3N3YXAuaD4KKyNpbmNsdWRlIDxsaW51eC9wYWdlbWFwLmg+CiAKICNpbmNsdWRlICJ4ODYuaCIK
ICNpbmNsdWRlICJzdm0uaCIKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
