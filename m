Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129A47DB08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T87H2gFEl5iPiAQU3G+ITA0KOiS8J58Y2EpKp0GmeHM=; b=YDuHxsDYIsEclZ
	vmte/i/1FRjMzVicquFlh38cDrnULHnxUHvnC2pOPrTL1O3Ounxz92YhN6kVjbhLmhQmoMitrgSjt
	9hzqP7WUW6JGgVXNnSnsMFwnCpBvuPqqKfLYGa4LGLAYvBsw3JFNTu/QwMCexRDS1nUD/0+8LmHQZ
	S/26rE8+9Y6Mf9ZwjuoEQLInvJ2xx9i0k8ElJ/3diC9mvu74/tKBNKe312+Zo2mT5CFkf7cxytCvi
	uD+JqJIXUm7nhkRs1BK2HGZds8xvJRLTmSbJCfI5ADZx2CvCDf6+5UbVtnrkyEWKmhYmdkp4bfYza
	e0706rj+/3B6ddiZNgbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9wm-0002wr-Mc; Thu, 01 Aug 2019 12:12:40 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9rX-0005gz-De
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:07:16 +0000
Received: by mail-qt1-x843.google.com with SMTP id d23so69935683qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 05:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=L8sXm7xcpE01pWT1+FK9gK106nq8ernY7LG5QfcWBLM=;
 b=d636y+g5jgfJUvNhPTIGZxZDKyjoATAffWH81BTJS1WUYCviCX2KphcwKWu3UJbHCH
 Bca32WSj6wzC3XJeNRLsyRkS2aB3Rr34s4wqrL5uH2Cm02/DUmhwz7wzpzwJh8mwKBD6
 4QIf+Nbh+p8GagiqLRxHjxqi0iIJsBPTWjZigI4Y9eFqdFiFu24mQfWaqVVVkpPkUX8+
 mJKnvrkYID7808AWYwCuc1o8lEIkfSh9axdZIpfGW/2a1uboti0nmqHPUcPUs3+dD8go
 o/UEsIFGI0mQCMf7uMLVkS/MlJ0B6GqSM2Y86RU8B7OAx0ALkO+rWEo0sI8rT1U3UOQS
 e0uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=L8sXm7xcpE01pWT1+FK9gK106nq8ernY7LG5QfcWBLM=;
 b=cAui+Aw71yo9UjlcF8UqR889qm40vZsEsxmpPd5Qdm1HVGiv0O7FFvx0y9LsAvgUbu
 X3Ac/yAOV+WTSpjYm3/HztNuxiBEac8JyloP1/3JjqokSbvStDEU6eOGx+idVPUGbiGP
 vfdTFSEciYJhyIqPw77tsoSPD0Tt32NWl0x1QT4qb+4iRnpnkm4Eg//jvf6q7GWlveIR
 ovwtC903rXVYKDkDYzIeQ6bKqyAntxJFCfjyL9L6OrUAfRHKbSIOmB2DkCHCdszurdPA
 CIwthSl2Vz6igR6cmRskeBjDN1YbzQkpGgHSVeAahswwy3wduq4sGEDTpX14H1+r1V5/
 6C2g==
X-Gm-Message-State: APjAAAWGOPzQeWxLRpZhmGi4DgWex3GLKpSiifIQ6ip7aJR9plYJ3Eh0
 osdUnS06bmeqlSjzKnFL17TzaA==
X-Google-Smtp-Source: APXvYqyczlC981qA9pvtXHuVRF0isXbzlNG4ebJOhXdQq3CxmBtzxeJNbp7NlNyrnOn6nZhiv9GfjQ==
X-Received: by 2002:ac8:4697:: with SMTP id g23mr65965157qto.285.1564661233806; 
 Thu, 01 Aug 2019 05:07:13 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id h1sm33942126qkh.101.2019.08.01.05.07.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 05:07:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] arm64/mm: fix variable 'tag' set but not used
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190801120121.6cmtho3wd32nzfoz@willie-the-truck>
Date: Thu, 1 Aug 2019 08:07:12 -0400
Message-Id: <5E9F5456-3B82-4CB8-868B-1C7B4CBE4CBC@lca.pw>
References: <1564605498-17629-1-git-send-email-cai@lca.pw>
 <20190801120121.6cmtho3wd32nzfoz@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_050715_514449_5F44B515 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, andreyknvl@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyAxLCAyMDE5LCBhdCA4OjAxIEFNLCBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwu
b3JnPiB3cm90ZToKPiAKPiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAwNDozODoxOFBNIC0wNDAw
LCBRaWFuIENhaSB3cm90ZToKPj4gV2hlbiBDT05GSUdfS0FTQU5fU1dfVEFHUz1uLCBzZXRfdGFn
KCkgaXMgY29tcGlsZWQgYXdheS4gR0NDIHRocm93cyBhCj4+IHdhcm5pbmcsCj4+IAo+PiBtbS9r
YXNhbi9jb21tb24uYzogSW4gZnVuY3Rpb24gJ19fa2FzYW5fa21hbGxvYyc6Cj4+IG1tL2thc2Fu
L2NvbW1vbi5jOjQ2NDo1OiB3YXJuaW5nOiB2YXJpYWJsZSAndGFnJyBzZXQgYnV0IG5vdCB1c2Vk
Cj4+IFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+PiAgdTggdGFnID0gMHhmZjsKPj4gICAg
IF5+fgo+PiAKPj4gRml4IGl0IGJ5IG1ha2luZyBfX3RhZ19zZXQoKSBhIHN0YXRpYyBpbmxpbmUg
ZnVuY3Rpb24uCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBRaWFuIENhaSA8Y2FpQGxjYS5wdz4KPj4g
LS0tCj4+IGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5LmggfCA2ICsrKysrLQo+PiAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaCBiL2FyY2gvYXJtNjQvaW5jbHVk
ZS9hc20vbWVtb3J5LmgKPj4gaW5kZXggYjdiYTc1ODA5NzUxLi45NjQ1YjEzNDBhZmUgMTAwNjQ0
Cj4+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5LmgKPj4gKysrIGIvYXJjaC9h
cm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaAo+PiBAQCAtMjEwLDcgKzIxMCwxMSBAQCBzdGF0aWMg
aW5saW5lIHVuc2lnbmVkIGxvbmcga2FzbHJfb2Zmc2V0KHZvaWQpCj4+ICNkZWZpbmUgX190YWdf
cmVzZXQoYWRkcikJdW50YWdnZWRfYWRkcihhZGRyKQo+PiAjZGVmaW5lIF9fdGFnX2dldChhZGRy
KQkJKF9fdTgpKCh1NjQpKGFkZHIpID4+IDU2KQo+PiAjZWxzZQo+PiAtI2RlZmluZSBfX3RhZ19z
ZXQoYWRkciwgdGFnKQkoYWRkcikKPj4gK3N0YXRpYyBpbmxpbmUgY29uc3Qgdm9pZCAqX190YWdf
c2V0KGNvbnN0IHZvaWQgKmFkZHIsIHU4IHRhZykKPj4gK3sKPj4gKwlyZXR1cm4gYWRkcjsKPj4g
K30KPiAKPiBXaHkgZG9lc24ndCB0aGlzIHRyaWdnZXIgYSB3YXJuaW5nIGluIHBhZ2VfdG9fdmly
dCgpLCB3aGljaCBwYXNzZXMgYW4KPiB1bnNpZ25lZCBsb25nIGZvciB0aGUgYWRkcmVzcyBwYXJh
bWV0ZXI/CgojZGVmaW5lIHBhZ2VfdG9fdmlydChwYWdlKSDigKYgX190YWdfc2V0KF9fYWRkciwg
cGFnZV9rYXNhbl90YWcocGFnZSkpOyDigKYKCnN0YXRpYyBpbmxpbmUgdTggcGFnZV9rYXNhbl90
YWcoY29uc3Qgc3RydWN0IHBhZ2UgKnBhZ2UpCnsJCglyZXR1cm4gMHhmZjsKfQoKR0NDIHdpbGwg
c2VlIHRoYXQg4oCccGFnZeKAnSBpcyB1c2VkLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
