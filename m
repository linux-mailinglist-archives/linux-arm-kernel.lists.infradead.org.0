Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B81217DDD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 11:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdjyBfqA9EHBCvFdAJvm4V9zbxQWSC4j5brQ8L+tzs4=; b=ejD1KikKvoje0U
	yaD2lnVEopO6fbtuBH9HmB583jII3VlETdxc0f+XvfZsbxzju5OX6wYN71hbWq+wFxW75g7XUyAkH
	iwFjYlDd2tlQx91Weo3SzBLe8XY17MStDQZfgXYmZkOYC92Ji6d1FsfDDZMjc+PrsA/oGXL4m0zmX
	n6ALiQ6w54PmQ0ciGGCbzm6y4p8G3y8AHdM5wleD/9yHU/cAaQlDnyuk+b9jx0YndtFE/RIqeGTe7
	ahDHObRHiV2UyTsB79fjNUI6QFORZ73Zt4Uy793MA0KG7Fx9wP8DDLjkPJiGCryJBINR/8ieU0I3m
	Xb5tN1QKqAwFiYM6k0zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBFtZ-00036P-38; Mon, 09 Mar 2020 10:44:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBFtS-00035k-Ea
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 10:44:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3D6B1FB;
 Mon,  9 Mar 2020 03:44:15 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E52E3F67D;
 Mon,  9 Mar 2020 03:44:14 -0700 (PDT)
Date: Mon, 9 Mar 2020 10:44:12 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?546L56iL5Yia?= <wangchenggang@vivo.com>
Subject: Re: [PATCH] arch/arm64: fix typo in a comment
Message-ID: <20200309104411.GB25261@lakrids.cambridge.arm.com>
References: <000401d5f5e3$622aefa0$2680cee0$@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000401d5f5e3$622aefa0$2680cee0$@vivo.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_034418_534368_F67389C7 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: 'Marc Zyngier' <maz@kernel.org>, trivial@kernel.org,
 'Catalin Marinas' <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 'Thomas Gleixner' <tglx@linutronix.de>, 'Will Deacon' <will@kernel.org>,
 wenhu.wang@vivo.com, 'Allison Randal' <allison@lohutok.net>,
 'Andrew Murray' <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMDksIDIwMjAgYXQgMDM6MjE6NDJQTSArMDgwMCwg546L56iL5YiaIHdyb3Rl
Ogo+IEZpeCB0eXBvIGluIGEgY29tbWVudCBpbiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Vzci5o
Cj4gCj4gIlVuYWxsb2N0ZWQiIC0+ICJVbmFsbG9jYXRlZCIKPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
aGVuZ2dhbmcgV2FuZyA8d2FuZ2NoZW5nZ2FuZ0B2aXZvLmNvbT4KCk15IGJhZCwgaXQgc2VlbXMu
CgpBY2tlZC1ieTogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KCk1hcmsuCgo+
IC0tLQo+ICBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Vzci5oIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9lc3IuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vZXNyLmgK
PiBpbmRleCBjYjI5MjUzYWU4NmIuLjZhMzk1YTdlNjcwNyAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2Vzci5oCj4gKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lc3Iu
aAo+IEBAIC02MCw3ICs2MCw3IEBACj4gICNkZWZpbmUgRVNSX0VMeF9FQ19CS1BUMzIJKDB4Mzgp
Cj4gIC8qIFVuYWxsb2NhdGVkIEVDOiAweDM5ICovCj4gICNkZWZpbmUgRVNSX0VMeF9FQ19WRUNU
T1IzMgkoMHgzQSkJLyogRUwyIG9ubHkgKi8KPiAtLyogVW5hbGxvY3RlZCBFQzogMHgzQiAqLwo+
ICsvKiBVbmFsbG9jYXRlZCBFQzogMHgzQiAqLwo+ICAjZGVmaW5lIEVTUl9FTHhfRUNfQlJLNjQJ
KDB4M0MpCj4gIC8qIFVuYWxsb2NhdGVkIEVDOiAweDNEIC0gMHgzRiAqLwo+ICAjZGVmaW5lIEVT
Ul9FTHhfRUNfTUFYCQkoMHgzRikKPiAtLQo+IDIuMjAuMQo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
