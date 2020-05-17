Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160BA1D6B3B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghFsodxDhx6IH+4ljbrK2fCIh7jXBYW0ThVbO/xbRhs=; b=YSKRRS+gMkVMbJ
	nqJIc4YDG+v6vLFrdxyOZh7LVP/sOGFhph4/NyLoLKLRERunE6JZPeLZf7Y2jq9y8eSHkcWWo0ulq
	WNN21NnS9fyn2DR+zzJ3nNEJD20sz0V9hpWkCBp0sU3S+odcg923PaLECGqI1ES3luya8yxn2rJm+
	Yb+6tWDmhfeEiiRODrotBaQkOT8il0Z53Godw4NwurqlGXbHW5ewvm25svQQmhYw/YLVS2sZSipZM
	KSETQuix24uC1ZFelBlCZzg6z60olV+0VEu8qylphVUM4qGr7aSBX6gsUEq0H2kcguDoQEuMpI892
	17bG5d1Quxlo3XsJ6ymw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaMcM-0004C8-Ln; Sun, 17 May 2020 16:58:26 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaMcC-0004Bp-M9
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:58:18 +0000
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id AC094100004;
 Sun, 17 May 2020 16:58:14 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>
Subject: Re: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: fix SFP
 binding
In-Reply-To: <20200506192916.29853-1-marek.behun@nic.cz>
References: <20200506192916.29853-1-marek.behun@nic.cz>
Date: Sun, 17 May 2020 18:58:14 +0200
Message-ID: <87zha6fqhl.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_095816_855928_A776FB9D 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyZWsgQmVow7puIDxtYXJlay5iZWh1bkBuaWMuY3o+IHdyaXRlczoKCj4gVGhlIHNmcCBjb21w
YXRpYmxlIHNob3VsZCBiZSAnc2ZmLHNmcCcsIG5vdCAnc2ZmLHNmcCsnLiBXZSB1c2VkIHBhdGNo
ZWQKPiBrZXJuZWwgd2hlcmUgdGhlIGxhdHRlciB3YXMgd29ya2luZy4KPgo+IEZpeGVzOiA3MTA5
ZDgxN2RiMmUgKCJhcm02NDogZHRzOiBtYXJ2ZWxsOiBhZGQgRFRTIGZvciBUdXJyaXMgTW94IikK
PiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KPiBDYzog
R3JlZ29yeSBDTEVNRU5UIDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+CgpBcHBsaWVkIG9u
IG12ZWJ1L2R0NjQKClRoYW5rcywKCkdyZWdvcnkKCgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMgfCAyICstCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cwo+IGlu
ZGV4IGJiNDJkMWU2YTRlOS4uNmEyZWM2NjI1ODgwIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cwo+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cwo+IEBAIC05
NSw3ICs5NSw3IEBAIHNkaGNpMV9wd3JzZXE6IHNkaGNpMS1wd3JzZXEgewo+ICAJfTsKPiAgCj4g
IAlzZnA6IHNmcCB7Cj4gLQkJY29tcGF0aWJsZSA9ICJzZmYsc2ZwKyI7Cj4gKwkJY29tcGF0aWJs
ZSA9ICJzZmYsc2ZwIjsKPiAgCQlpMmMtYnVzID0gPCZpMmMwPjsKPiAgCQlsb3MtZ3BpbyA9IDwm
bW94dGV0X3NmcCAwIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICAJCXR4LWZhdWx0LWdwaW8gPSA8Jm1v
eHRldF9zZnAgMSBHUElPX0FDVElWRV9ISUdIPjsKPiAtLSAKPiAyLjI0LjEKPgoKLS0gCkdyZWdv
cnkgQ2xlbWVudCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5n
Cmh0dHA6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
