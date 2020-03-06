Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF3917BD5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KkMP0l2KMPgTGg+CfnwzMDHbbKTsLGQ5rIY7TiJRw4U=; b=Rb38pujEj9CT4z
	1EEps1+OgJJTBv66+kea8SHlotjuwhCsRwJkypI2dahvP/vdKJCAKoc4co7nft/X4RItiIkbLXNv0
	7YCbfGkPMdNl6mD9gmjZvENYxBXmxw+WOt6HWXb5v39J6YEClTfo+2bjlJUxlwV0FUEWwxDOVUG6X
	W88bPnWw4+06JJJKLeVNuopbFH5YoeqwbL92/4sfyk/NrgMSnimYKJdgRjZYsipRNn8gfHJ1QkCsZ
	dfrQ1YMKGvXJcZPIqfvghAMQjwQwhouox/3xTTxjvXp1ldRd5F9efvV/BHakFb/OrHCSGrorW4JCZ
	WK9cQ2Gs4AKGL65k3HYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACXE-0005Ko-Lu; Fri, 06 Mar 2020 12:57:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACX8-0005Jv-5W
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:56:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 544F331B;
 Fri,  6 Mar 2020 04:56:52 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23E1D3F6CF;
 Fri,  6 Mar 2020 04:56:51 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm: mach-dove: Mark dove_io_desc as __maybe_unused
Date: Fri,  6 Mar 2020 12:56:38 +0000
Message-Id: <20200306125638.8285-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_045654_251255_56D7B4C2 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2l0aG91dCB0aGlzLCB3ZSBnZXQgdGhlIHdhcm5pbmdzIGJlbG93IHdoZW4gQ09ORklHX01NVSBp
cyBkaXNhYmxlZDoKCmxpbnV4L2FyY2gvYXJtL21hY2gtZG92ZS9jb21tb24uYzo1MToyNDogd2Fy
bmluZzog4oCYZG92ZV9pb19kZXNj4oCZIGRlZmluZWQKYnV0IG5vdCB1c2VkIFstV3VudXNlZC12
YXJpYWJsZV0Kc3RhdGljIHN0cnVjdCBtYXBfZGVzYyBkb3ZlX2lvX2Rlc2NbXSBfX2luaXRkYXRh
ID0gewogICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fgoKQ2M6IEphc29uIENvb3Bl
ciA8amFzb25AbGFrZWRhZW1vbi5uZXQ+CkNjOiBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+
CkNjOiBTZWJhc3RpYW4gSGVzc2VsYmFydGggPHNlYmFzdGlhbi5oZXNzZWxiYXJ0aEBnbWFpbC5j
b20+CkNjOiBHcmVnb3J5IENsZW1lbnQgPGdyZWdvcnkuY2xlbWVudEBib290bGluLmNvbT4KQ2M6
IFJ1c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPgpTaWduZWQtb2ZmLWJ5OiBWaW5j
ZW56byBGcmFzY2lubyA8dmluY2Vuem8uZnJhc2Npbm9AYXJtLmNvbT4KLS0tCiBhcmNoL2FybS9t
YWNoLWRvdmUvY29tbW9uLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWRvdmUvY29tbW9uLmMg
Yi9hcmNoL2FybS9tYWNoLWRvdmUvY29tbW9uLmMKaW5kZXggMDFiODMwYWZjZWE5Li5kYmU5NzBl
Mzc4OTUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtZG92ZS9jb21tb24uYworKysgYi9hcmNo
L2FybS9tYWNoLWRvdmUvY29tbW9uLmMKQEAgLTQ4LDcgKzQ4LDcgQEAKIC8qKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKgogICogSS9PIEFkZHJlc3MgTWFwcGluZwogICoqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCi1z
dGF0aWMgc3RydWN0IG1hcF9kZXNjIGRvdmVfaW9fZGVzY1tdIF9faW5pdGRhdGEgPSB7CitzdGF0
aWMgc3RydWN0IG1hcF9kZXNjIF9fbWF5YmVfdW51c2VkIGRvdmVfaW9fZGVzY1tdIF9faW5pdGRh
dGEgPSB7CiAJewogCQkudmlydHVhbAk9ICh1bnNpZ25lZCBsb25nKSBET1ZFX1NCX1JFR1NfVklS
VF9CQVNFLAogCQkucGZuCQk9IF9fcGh5c190b19wZm4oRE9WRV9TQl9SRUdTX1BIWVNfQkFTRSks
Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
