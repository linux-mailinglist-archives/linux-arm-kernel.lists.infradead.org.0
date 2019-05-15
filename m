Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED761E8F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 09:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qzmFKY8zQ0umkbQDkBGOi9emuvHxwEdiGKIg1EjYuTk=; b=OGmiicl8HK4EH9AkPZu1pnBY1
	lXK4enzB7CURrptNXNncUvg/EvA1N9wGWg7AXiy3XRuB+FTBGhh0BrD5ekiffn7GPUp7WINx7a4fV
	jNOvJ/CsGd23vx3i+wUum2ujW4T0DPp43ZuPYzCK3hog0Jd2SP/hgsLg6mC3++Q5QtC2ElCOJ6If8
	t2PRa/NBqMz7MihTiIeBYyKP27gwqYjuRr20WlRjxoXKy9QIip3Vf1ANtBQfLGLNw7hqo6II03SS8
	+7LvrhvE9R+iBJ9RvzcyQSicB6oJMTdmPbZG9Gqz+kr4xvDpnqMG7O+fH4QGymw2Hc5+XPzPb0g5Q
	4k9/4MnQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQoIb-0004Rt-JF; Wed, 15 May 2019 07:26:01 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQoIT-0004RW-DG
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 07:25:54 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cdbbed80000>; Wed, 15 May 2019 00:25:12 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 15 May 2019 00:25:53 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 15 May 2019 00:25:53 -0700
Received: from [10.19.108.132] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 15 May
 2019 07:25:50 +0000
Subject: Re: [PATCH V3 3/8] clk: tegra: Export functions for EMC clock scaling
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-4-josephl@nvidia.com>
 <502f213b-2101-9d56-54c9-8be48f1be5b8@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <ec33f656-707c-df2c-dc53-206c9a533cb9@nvidia.com>
Date: Wed, 15 May 2019 15:25:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <502f213b-2101-9d56-54c9-8be48f1be5b8@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557905112; bh=jrnWqN2/5mZMwT6yqfzkk1cAC05bsa3N0rVhz8ivnBw=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Djwtup3MPZ9WaM+OX9pCCkzVZ1n+AniGRTXwqfU98gs0OEie4LDloDV9kn5ljcAW+
 UTE5flHwi2RWdIkxBCnEkjP7AabAezQIqLIQgV7EKnKwkpxLkZmGUVWYNByIjgmOAh
 0SAnyo05p2xI/0EY9wWlN6Xro2503AVuilkIX2BgB+wN69BQsR9103gV4vsAd0UOqN
 RLPbKQUqsT/HpzbVE5KknEB3NEYdWQheWRjC2bMf68fAMsdf23Ez+cRsB6G1nwPw4c
 DkMUKR2xesbgigUmPI+HckS90msI6s8jREn4tDApO3XobOzYgqAZiUxoK9Nkggr/3i
 6Tqup70/Mx91Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_002553_462067_E4BA2693 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8xNS8xOSAxMjoyOSBBTSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDEwLjA1LjIwMTkg
MTE6NDcsIEpvc2VwaCBMbyDQv9C40YjQtdGCOgo+PiBFeHBvcnQgZnVuY3Rpb25zIHRvIGFsbG93
IGFjY2Vzc2luZyB0aGUgQ0FSIHJlZ2lzdGVyIHJlcXVpcmVkIGJ5IEVNQwo+PiBjbG9jayBzY2Fs
aW5nLiBUaGVzZSBmdW5jdGlvbnMgd2lsbCBiZSB1c2VkIHRvIGFjY2VzcyB0aGUgQ0FSIHJlZ2lz
dGVyCj4+IGFzIHBhcnQgb2YgdGhlIHNjYWxpbmcgc2VxdWVuY2UuCj4gCj4+IERLSU0tU2lnbmF0
dXJlOiB2PTE7IGE9cnNhLXNoYTI1NjsgYz1yZWxheGVkL3JlbGF4ZWQ7IGQ9bnZpZGlhLmNvbTsg
cz1uMTsKPj4gCXQVNTc0NzgwMTg7IGJoPWVtZDNSNm5TRndMNUIrYVdBMlcrYkpxY1oxSmh2d25h
eXoxd0dPUFNBNE09Owo+PiAJaD1YLVBHUC1Vbml2ZXJzYWw6RnJvbTpUbzpDQzpTdWJqZWN0OkRh
dGU6TWVzc2FnZS1JRDpYLU1haWxlcjoKPj4gCSBJbi1SZXBseS1UbzpSZWZlcmVuY2VzOk1JTUUt
VmVyc2lvbjpYLU5WQ29uZmlkZW50aWFsaXR5Ogo+PiAJIENvbnRlbnQtVHJhbnNmZXItRW5jb2Rp
bmc6Q29udGVudC1UeXBlOwo+PiAJYj1mVzdkZHg2cDZCdUdOTEdBNmpBTDVBeHNvanFlUWNPZzlm
WkJxYkExWmU0NVhVM2d0N3RpTDg4czhnN2dUZnRBKwo+PiAJIE5kcnVLUlhQTFMwcjRpT2dLcUVV
ZjNibW9CUDBLZitsMFBRY0p1NTVVNXY1NVhuUDZjdUtyUXcyY21iRGF3L2cyWgo+PiAJIGE2RFpy
QUliVVp6aTNQM2I3NjRaRG1VbFJEMXNIQVdXc3dad0cza0h3QlAwVERPWE5qQUVWY3A3TlBtODY4
Vk92dgo+PiAJIGFKcmRiNlZibGtud2pOa0U2T1Y3a3RHQjFPRGdlNVlTQWVQRExOQXBsWkJ3K0JG
bm9ndEVTd3ZmMGNGY1lWYnhDRwo+PiAJIENPaC9VTktkbEp1T005NUlnYlppb205SThOaXd1UzA3
YkEyV3p1ZFNnbk1LYmhOSTZWbEZnRHU1QTZKYVB0M0lydgo+PiAJIE40bnVVVDQrTG4zRmc9Cj4+
Cj4gCj4gV2hhdCdzIHRoYXQ/Cj4gClNvcnJ5LCBJIGRvbid0IGtub3cgaG93IGRvZXMgdGhhdCBj
b21lIGZyb20uIEkgZGlkbid0IHNlZSB0aGF0IGluIG15IAptYWlsIGNsaWVudCB3aGVuIHJlY2Vp
dmluZyB0aGlzIHBhdGNoLgoKSSBkaWQgbm90aWNlIHRoaXMgcGF0Y2ggd2FzIG1pc3NpbmcgaW4g
dGhlIFRlZ3JhIFBhdGNod29yaywgYnV0IGl0J3MgCm9rYXkgaW4gdGhlIExpbnV4IEFSTSBLZXJu
ZWwgcGF0Y2h3b3JrLgpodHRwOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9saW51eC10
ZWdyYS9saXN0Lz9zZXJpZXM9MTA3MTQyCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJv
amVjdC9saW51eC1hcm0ta2VybmVsL2xpc3QvP3Nlcmllcz0xMTYwOTcKClNvIEkgZ3Vlc3MgbWF5
YmUgc29tZXRoaW5nIHdyb25nIHdoZW4gdGhlIHNlcnZlciBoYW5kbGluZyB0aGlzIHBhdGNoLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
