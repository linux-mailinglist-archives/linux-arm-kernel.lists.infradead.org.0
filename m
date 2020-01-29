Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D487814CF5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 18:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgbZR9yhh2mwVKtO5yrZfegcejidgBrF9Nqq1GXXlRM=; b=NOlMG3bIzGWBnb
	gkNhVd5gCRqNcZs9dONsk0arKavNyFIJJWoTYsoEp+uM/lmncbH62LyU7dN/6ECfpKGgIp7AQAZoL
	dFkJUqyYVSrv+XhDygZxEMOvNeeMjYOyeXutJLx/Z4+xaLhX7+nhY5HQhOJtrQNu8tvUwVOpOjDk7
	iXUKj1XInIRQI0ETC2mEKLa4sDJmfVNlHwz+aiWGxlHXMR1KIzhHDFdSkSVR83NwVpfvFQmkMPGKS
	+nvj+7qmtl1AEQj1hFkTKQcdkgGyeXUtE7mv8dSVQDCZuqpx16M+toUTbcMw6FRFJ23NZhLVoRcWY
	CiEE7W21aWrG3guhtTEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqur-00030c-Bm; Wed, 29 Jan 2020 17:14:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqug-0002zH-NV
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 17:14:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BF07328;
 Wed, 29 Jan 2020 09:14:00 -0800 (PST)
Received: from [10.0.2.15] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C7C43F67D;
 Wed, 29 Jan 2020 09:13:57 -0800 (PST)
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, dietmar.eggemann@arm.com
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <96fdead6-9896-5695-6744-413300d424f5@arm.com>
Date: Wed, 29 Jan 2020 17:13:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20191218182607.21607-7-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_091402_857311_72211CA9 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T25seSBjb21tZW50aW5nIG9uIHRoZSBiaXRzIHRoYXQgc2hvdWxkIGJlIHRoZXJlIHJlZ2FyZGxl
c3Mgb2YgdXNpbmcgdGhlCndvcmtxdWV1ZXMgb3Igbm90OwoKT24gMTgvMTIvMjAxOSAxODoyNiwg
SW9uZWxhIFZvaW5lc2N1IHdyb3RlOgo+ICtzdGF0aWMgdm9pZCBjcHVfYW11X2ZpZV9pbml0X3dv
cmtmbihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gK3sKPiArCXU2NCBjb3JlX2NudCwgY29u
c3RfY250LCByYXRpbzsKPiArCXN0cnVjdCBjcHVfYW11X3dvcmsgKmFtdV93b3JrOwo+ICsJaW50
IGNwdSA9IHNtcF9wcm9jZXNzb3JfaWQoKTsKPiArCj4gKwlpZiAoIWNwdV9oYXNfYW11X2ZlYXQo
KSkgewo+ICsJCXByX2RlYnVnKCJDUFUlZDogY291bnRlcnMgYXJlIG5vdCBzdXBwb3J0ZWQuXG4i
LCBjcHUpOwo+ICsJCXJldHVybjsKPiArCX0KPiArCj4gKwljb3JlX2NudCA9IHJlYWRfc3lzcmVn
X3MoU1lTX0FNRVZDTlRSMF9DT1JFX0VMMCk7Cj4gKwljb25zdF9jbnQgPSByZWFkX3N5c3JlZ19z
KFNZU19BTUVWQ05UUjBfQ09OU1RfRUwwKTsKPiArCj4gKwlpZiAodW5saWtlbHkoIWNvcmVfY250
IHx8ICFjb25zdF9jbnQpKSB7Cj4gKwkJcHJfZXJyKCJDUFUlZDogY3ljbGUgY291bnRlcnMgYXJl
IG5vdCBlbmFibGVkLlxuIiwgY3B1KTsKPiArCQlyZXR1cm47Cj4gKwl9Cj4gKwo+ICsJYW11X3dv
cmsgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IGNwdV9hbXVfd29yaywgY3B1X3dvcmspOwo+
ICsJaWYgKHVubGlrZWx5KCEoYW11X3dvcmstPmNwdWluZm9fbWF4X2ZyZXEpKSkgewo+ICsJCXBy
X2VycigiQ1BVJWQ6IGludmFsaWQgbWF4aW11bSBmcmVxdWVuY3kuXG4iLCBjcHUpOwo+ICsJCXJl
dHVybjsKPiArCX0KPiArCj4gKwkvKgo+ICsJICogUHJlLWNvbXB1dGUgdGhlIGZpeGVkIHJhdGlv
IGJldHdlZW4gdGhlIGZyZXF1ZW5jeSBvZiB0aGUKPiArCSAqIGNvbnN0YW50IGNvdW50ZXIgYW5k
IHRoZSBtYXhpbXVtIGZyZXF1ZW5jeSBvZiB0aGUgQ1BVIChoeikuCgpJIGNhbid0IHJlc2lzdDog
cy9oei9Iei8KCj4gKwkgKi8KPiArCXJhdGlvID0gKHU2NClhcmNoX3RpbWVyX2dldF9yYXRlKCkg
PDwgKDIgKiBTQ0hFRF9DQVBBQ0lUWV9TSElGVCk7Cj4gKwlyYXRpbyA9IGRpdjY0X3U2NChyYXRp
bywgYW11X3dvcmstPmNwdWluZm9fbWF4X2ZyZXEgKiAxMDAwKTsKCk5pdDogd2UncmUgbWlzc2lu
ZyBhIGNvbW1lbnQgc29tZXdoZXJlIHRoYXQgdGhlIHVuaXQgb2YgdGhpcyBpcyBpbiBrSHoKKHdo
aWNoIGV4cGxhaW5zIHRoZSAqIDEwMDApLgoKPiArCXRoaXNfY3B1X3dyaXRlKGFyY2hfbWF4X2Zy
ZXFfc2NhbGUsICh1bnNpZ25lZCBsb25nKXJhdGlvKTsKPiArCgpPa2F5IHNvIHdoYXQgd2UgZ2V0
IGluIHRoZSB0aWNrIGlzOgoKICAvXCBjb3JlCiAgLS0tLS0tLS0KICAvXCBjb25zdAoKQW5kIHdl
IHdhbnQgdGhhdCB0byBiZSBTQ0hFRF9DQVBBQ0lUWV9TQ0FMRSB3aGVuIHJ1bm5pbmcgYXQgbWF4
IGZyZXEuIElPVyB3ZQp3YW50IHRvIHR1cm4KCiAgbWF4X2ZyZXEKICAtLS0tLS0tLS0tCiAgY29u
c3RfZnJlcQoKaW50byBTQ0hFRF9DQVBBQ0lUWV9TQ0FMRSwgc28gd2UgY2FuIGp1c3QgbXVsdGlw
bHkgdGhhdCBieToKCiAgY29uc3RfZnJlcQogIC0tLS0tLS0tLS0gKiBTQ0hFRF9DQVBBQ0lUWV9T
Q0FMRQogIG1heF9mcmVxCgpCdXQgd2hhdCB0aGUgcmF0aW8geW91IGFyZSBzdG9yaW5nIGhlcmUg
aXMgCgogICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0X2ZyZXEKICBhcmNoX21heF9mcmVx
X3NjYWxlID0gICAtLS0tLS0tLS0tICogU0NIRURfQ0FQQUNJVFlfU0NBTEXCsgogICAgICAgICAg
ICAgICAgICAgICAgICAgICBtYXhfZnJlcQoKKGJlY2F1c2UgeCA8PCAyICogU0NIRURfQ0FQQUNJ
VFlfU0hJRlQgPT0geCA8PCAyMCkKCgpJbiB0b3BvbG9neV9mcmVxX3NjYWxlX3RpY2soKSB5b3Ug
ZW5kIHVwIGRvaW5nCgogIC9cIGNvcmUgICBhcmNoX21heF9mcmVxX3NjYWxlCiAgLS0tLS0tLSAq
IC0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgL1wgY29uc3QgIFNDSEVEX0NBUEFDSVRZX1NDQUxFCgp3
aGljaCBnaXZlcyB1cyB3aGF0IHdlIHdhbnQgKFNDSEVEX0NBUEFDSVRZX1NDQUxFIGF0IG1heCBm
cmVxKS4KCgpOb3csIHRoZSByZWFzb24gd2h5IHdlIG11bHRpcGx5IG91ciByYXRpbyBieSB0aGUg
c3F1YXJlIG9mClNDSEVEX0NBUEFDSVRZX1NDQUxFIHdhcyBub3Qgb2J2aW91cyB0byBtZSwgYnV0
IHlvdSBwb2ludGVkIG1lIG91dCB0aGF0IHRoZQpmcmVxdWVuY3kgb2YgdGhlIGFyY2ggdGltZXIg
Y2FuIGJlICpyZWFsbHkqIGxvdyBjb21wYXJlZCB0byB0aGUgbWF4IENQVSBmcmVxLgoKRm9yIGlu
c3RhbmNlIG9uIGg5NjA6CgogIFsgICAgMC4wMDAwMDBdIGFyY2hfdGltZXI6IGNwMTUgdGltZXIo
cykgcnVubmluZyBhdCAxLjkyTUh6IChwaHlzKQoKICAkIHJvb3RAdmFsc2NoLWg5NjA6fiMgY2F0
IC9zeXMvZGV2aWNlcy9zeXN0ZW0vY3B1L2NwdWZyZXEvcG9saWN5NC9jcHVpbmZvX21heF9mcmVx
IAogIDIzNjIwMDAKClNvIG91ciByYXRpbyB3b3VsZCBiZQoKICAxJzkyMCcwMDAgKiAxMDI0CiAg
LS0tLS0tLS0tLS0tLS0tLQogICAgMiczNjInMDAwJzAwMAoKV2hpY2ggaXMgfjAuODMsIHNvIHRo
YXQgYmVjb21lcyBzaW1wbHkgMC4uLgoKCkkgaGFkIGEgYnJpZWYgbG9vayBhdCB0aGUgQXJtIEFS
TSwgZm9yIHRoZSBhcmNoIHRpbWVyIGl0IHNheXMgaXQgaXMKInR5cGljYWxseSBpbiB0aGUgcmFu
Z2UgMS01ME1IeiIsIGJ1dCB0aGVuIGFsc28gZ2l2ZXMgYW4gZXhhbXBsZSB3aXRoIDIwS0h6Cmlu
IGEgbG93LXBvd2VyIG1vZGUuCgpJZiB3ZSB0YWtlIHNheSA1R0h6IG1heCBDUFUgZnJlcXVlbmN5
LCBvdXIgbG93ZXIgYm91bmQgZm9yIHRoZSBhcmNoIHRpbWVyCih3aXRoIHRoYXQgU0NIRURfQ0FQ
QUNJVFlfU0NBTEXCsiB0cmljaykgaXMgYWJvdXQgfjQuNzY4S0h6LiBJdCdzIG5vdCAqdG9vKgpm
YXIgZnJvbSB0aGF0IDIwS0h6LCBidXQgSSdtIG5vdCBzdXJlIHdlIHdvdWxkIGFjdHVhbGx5IGJl
IGV4ZWN1dGluZyBzdHVmZgppbiB0aGF0IGxvdy1wb3dlciBtb2RlLgoKTG9uZyBzdG9yeSBzaG9y
dCwgd2UncmUgcHJvYmFibHkgZmluZSwgYnV0IGl0IHdvdWxkIG5pY2UgdG8gc2hvdmUgc29tZSBv
Zgp0aGUgYWJvdmUgaW50byBjb21tZW50cyAoZXNwZWNpYWxseSB0aGUgU0NIRURfQ0FQQUNJVFlf
U0NBTEXCsiB0cmljaykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
