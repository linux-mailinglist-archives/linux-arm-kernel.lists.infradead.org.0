Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900A4118469
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSgCRO3bMvgC2aLa/5HyLFi52P5Wr0iLR6CHSEHNvDw=; b=nZi7AykNEOMKkT
	WqtL+Zd5CV9zPSBffhfgSFF3fqUncDPbfjkIvk7ZFXL/E63lo7xIMJODK2OtJOxBewpZwLE0WenT2
	NFS4TTEz2936qgLGA600kKRsXNgQRSRNOGwvO+NVzVJUnCH5uNK9sOToOfZ/vKXMWS0PmmjF8Yzn8
	CWqBHsJlcDXy/jKOCSilDallH+Ir0F4U0lqVqyNA2InUt8od+MrdcZgCtk7jqX2BZJ0IYWDo5dRu8
	y2cDlV+r+XwQe9ytIcfEmQ8aKkqpmnavxjjHLOG4SlkyXZZ5zzbuhpezsOd49z2Mnjdy5Dj96Np2J
	RUP/da9ysohTZjOGpgyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecRj-0003eo-7H; Tue, 10 Dec 2019 10:08:47 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecRZ-0003d9-V4; Tue, 10 Dec 2019 10:08:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1575972508;
 bh=IycienwQrmPkO1OUxpnyPUgsVdH+CUBjnZCexiMG1YQ=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=CgMpGP3xMQ+A6rxCLaMPLGF9K1c2AecBz/+hplnfOVyRivesQURCDqvH9/kJoxFQ9
 yhy1q4RUmkRFDXVSUIANPfai+gXUjoa6JEHkUdNWb0umJquJHkHcgOvK+HKjb/hu90
 taFXnFzdSrzf/UVxJNA/TayF3SYmVOzgrGH4Uj6g=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.137.56]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lc8aj-1hvLXa3XXx-00jZIF; Tue, 10
 Dec 2019 11:08:28 +0100
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20191209223822.27236-1-smoch@web.de> <2668270.pdtvSLGib8@diego>
 <2cf70216-8d98-4122-4f4e-b8254089a017@web.de> <6162240.GiEx4hqPFh@diego>
From: Soeren Moch <smoch@web.de>
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 xsJuBFF1CvoRCADuPSewZ3cFP42zIHDvyXJuBIqMfjbKsx27T97oRza/j12Cz1aJ9qIfjOt5
 9cHpi+NeCo5n5Pchlb11IGMjrd70NAByx87PwGL2MO5k/kMNucbYgN8Haas4Y3ECgrURFrZK
 vvTMqFNQM/djQgjxUlEIej9wlnUO2xe7uF8rB+sQ+MqzMFwesCsoWgl+gRui7AhjxDJ2+nmy
 Ec8ZtuTrWcTNJDsPMehLRBTf84RVg+4pkv4zH7ICzb4AWJxuTFDfQsSxfLuPmYtG0z7Jvjnt
 iDaaa3p9+gmZYEWaIAn9W7XTLn0jEpgK35sMtW1qJ4XKuBXzDYyN6RSId/RfkPG5X6tXAQDH
 KCd0I2P2dBVbSWfKP5nOaBH6Fph7nxFFayuFEUNcuQgAlO7L2bW8nRNKlBbBVozIekqpyCU7
 mCdqdJBj29gm2oRcWTDB9/ARAT2z56q34BmHieY/luIGsWN54axeALlNgpNQEcKmTE4WuPaa
 YztGF3z18/lKDmYBbokIha+jw5gdunzXXtj5JGiwD6+qxUxoptsBooD678XxqxxhBuNPVPZ0
 rncSqYrumNYqcrMXo4F58T+bly2NUSqmDHBROn30BuW2CAcmfQtequGiESNHgyJLCaBWRs5R
 bm/u6OlBST2KeAMPUfGvL6lWyvNzoJCWfUdVVxjgh56/s6Rp6gCHAO5q9ItsPJ5xvSWnX4hE
 bAq8Bckrv2E8F0Bg/qJmbZ53FQf9GEytLQe0xhYCe/vEO8oRfsZRTMsGxFH1DMvfZ7f/MrPW
 CTyPQ3KnwJxi9Mot2AtP1V1kfjiJ/jtuVTk021x45b6K9mw0/lX7lQ+dycrjTm6ccu98UiW1
 OGw4rApMgHJR9pA59N7FAtI0bHsGVKlSzWVMdVNUCtF9R4VXUNxMZz84/ZcZ9hTK59KnrJb/
 ft/IEAIEpdY7IOVI7mso060k3IFFV/HbWI/erjAGPaXR3Cccf0aH28nKIIVREfWd/7BU050G
 P0RTccOxtYp9KHCF3W6bC9raJXlIoktbpYYJJgHUfIrPXrnnmKkWy6AgbkPh/Xi49c5oGolN
 aNGeFuvYWc0aU29lcmVuIE1vY2ggPHNtb2NoQHdlYi5kZT7CegQTEQgAIgUCUXUK+gIbAwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4AACgkQANCJ0qFZnBAmcQEAkMwkC8NpkNTFQ+wc1j0C
 D1zWXsI3BE+elCcGlzcK8d0A/04iWXt16ussH2x+LzceaJlUJUOs6c4khyCRzWWXKK1HzsFN
 BFF1CvoQCADVUJEklP4MK6yoxlb+/fFsPw2YBNfpstx6TB8EC7TefHY1vIe/O4i4Vf4YfR+E
 dbFRfEc1uStvd/NBOZmEZYOwXgKuckwKSEGKCDz5IBhiI84e0Je4ZkHP3poljJenZEtdfiSG
 ZKtEjWJUv34EQGbkal7oJ2FLdlicquDmSq/WSjFenfVuGKx4Cx4jb3D0RP8A0lCGMHY6qhlq
 fA4SgtjbFiSPXolTCCWGJr3L5CYnPaxg4r0G5FWt+4FZsUmvdUTWB1lZV7LGk1dBjdnPv6UT
 X9VtL2dWl1GJHajKBJp9yz8OmkptxHLY1ZeqZRv9zEognqiE2VGiKTZe1Ajs55+HAAMFB/4g
 FrF01xxygoi4x5zFzTB0VGmKIYK/rsnDxJFJoaR/S9iSycSZPTxECCy955fIFLy+GEF5J3Mb
 G1ETO4ue2wjBMRMJZejEbD42oFgsT1qV+h8TZYWLZNoc/B/hArl5cUMa+tqz8Ih2+EUXr9wn
 lYqqw/ita/7yP3ScDL9NGtZ+D4rp4h08FZKKKJq8lpy7pTmd/Nt5rnwPuWxagWM0C2nMnjtm
 GL2tWQL0AmGIbapr0uMkvw6XsQ9NRYYyKyftP1YhgIvTiF2pAJRlmn/RZL6ZuCSJRZFMLT/v
 3wqJe3ZMlKtufQP8iemqsUSKhJJVIwAKloCX08K8RJ6JRjga/41HwmEEGBEIAAkFAlF1CvoC
 GwwACgkQANCJ0qFZnBD/XQEAgRNZehpq0lRRtZkevVooDWftWF34jFgxigwqep7EtBwBAIlW
 iHJPk0kAK21A1fmcp11cd6t8Jgfn1ciPuc0fqaRb
Message-ID: <d0cece6c-9f90-c691-eb68-a25547532f68@web.de>
Date: Tue, 10 Dec 2019 11:08:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <6162240.GiEx4hqPFh@diego>
Content-Language: en-GB
X-Provags-ID: V03:K1:Z14Ja1Y13gnxlqi++A4VBiki+KiverqxuAZzPiSZydJ2ywbLfKT
 koOklF7ILxLQf8X4Fk+GFmvOjlSO75eER9uV9wqiLcuyD36oHq2huSRA1FiTM/ed4pix1ab
 AQOPPHiUDus2JzW2BZf5ain4KKwa+V/03+Ye/wKnwUmQaRUVrA46IphBre6TFgbgPGNFbLb
 oZH3gD+Om7xJBMFtBYEEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CCHovLydRME=:ECR4u5HgnossIWY9Q1uC6A
 w5IrLst3RvrKNh/u++Z65H04h0uySCFB3D555kzygpm/0uOyoCvliD1lby+ZC3q2E+b56v+v3
 TqHX/ORfN2mXWhl9a+2+ntJ8pSQ5HRZn3LKw37aEAA72Kj01aqdUi2EcjmBXsCgiEtbubdgUR
 Ghgtdq9XCP9YJNWD0QWIX4e9QaRsSBVD71tzlolkOQ59KEt4omiquEN3JGULq+XwYzGodugqj
 nZ2AkfGRBH2HgSq+eoujWx389k+wflv5gkxf6mlS7hrcQ4XEpSkUVkUDbSI2NVkYYRXAh41M6
 4u05V2SLSX45eQyiIsOvYeikm0hNYNhgOTEkkTb4s7yVu4/5BCbzJPzZeTqRqrOH6vSGEu4CW
 kwhvNYKm6i9ykYN4QV342RKUFYwZbHfe8wujYKXzzs9ysMJdzmigLEITlwz7p+nEtsftYnvPt
 auc+AoHnU88UUKkPCYHaEsokIFXqhC7xG6uE6bWRGkZksI813+N5277tfDfchl8p9kWywBunO
 wrETqZJcZP2oKww2EM+V1uMjsNiEBLfd/ff+8Gt/m4xEdwDx1cYT7rppj5dyWvupyWAna4/dt
 HLY8IXabz8/2Ufaz4+OwYsfsKNHB1GQRjZ8Tl7FQHcLaHg7IbsclfrcvVkIURyY8qQxnngo8l
 wbm3Aaq5ym6jVxG/WpIyr+9iSQgulbRCoAujaNKEsgugQIJuJMdjtgLt/h9sYi6Pzv12qkjqY
 FKe+gKJ9S3fUMuYpIXYKQVCIdOJpfb0fbfB9tcCJsgogm5ZEqBXliC4zYdKPUX7uqotMe361n
 TyCk6/S4A+IXwWSm4Z1sdKSFQo5pLms14I18MT8gw3KWrlFHUYMC1jGaFp6hUQqpvQLvwBQk8
 CqKlGlPnrbDGifahPPYw5srVtyPWvAgeaxfdkwnnnY1JethE/io4mxN20hTkN/n53iifMMIHi
 vIzYD5PVolNKO6x/c4sXwB7EBriQ+1Stokza7JbjaqvhdasJW/zq52nDXb4FVDhAM06eJXqJm
 dI/gnYM/gT1jMtmFGBMcgZqJiYKsHZ0ScwFLXIEGQN/3twakwvW5f2zgEgfPeuRkS7R2OyMZb
 qOtSxNDw3eSUbTRUfH1hqP6X7mzCh9ul6gmfL6inJk2Z0x5885nYXu/LQfg3WlBvbI8/bz0Gx
 sz9khoHXv3R/9B9myISAwzouNbsMCmWh/CXb3IJxrQvzelIQfzHMbDAkjcMOO9n2rTXtNMLeW
 dYhT/9dP6+KPUw+lju/TLd1kbwW0NypUYXbC43A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_020838_337406_D62918B3 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiAxMC4xMi4xOSAwMjoxOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
U29lcmVuLAo+Cj4gQW0gRGllbnN0YWcsIDEwLiBEZXplbWJlciAyMDE5LCAwMDoyOToyMSBDRVQg
c2NocmllYiBTb2VyZW4gTW9jaDoKPj4gT24gMTAuMTIuMTkgMDA6MDgsIEhlaWtvIFN0w7xibmVy
IHdyb3RlOgo+Pj4gQW0gTW9udGFnLCA5LiBEZXplbWJlciAyMDE5LCAyMzozODoyMiBDRVQgc2No
cmllYiBTb2VyZW4gTW9jaDoKPj4+PiBSb2NrUHJvNjQgc3VwcG9ydHMgYW4gQW1wYWsgQVA2MzU5
U0EgYmFzZWQgd2lmaS9idCBjb21ibyBtb2R1bGUuCj4+Pj4gVGhlIEJDTTQzNTkvOSB3aWZpIGNv
bnRyb2xsZXIgaW4gdGhpcyBtb2R1bGUgaXMgY29ubmVjdGVkIHRvIHNkaW8wLAo+Pj4+IGVuYWJs
ZSB0aGlzIGludGVyZmFjZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFNvZXJlbiBNb2NoIDxz
bW9jaEB3ZWIuZGU+Cj4+Pj4gLS0tCj4+Pj4gTm90IHN1cmUgd2hlcmUgdG8gcGxhY2UgZXhhY3Rs
eSB0aGUgc2RpbzAgbm9kZSBpbiB0aGUgZHRzIGJlY2F1c2UKPj4+PiBleGlzdGluZyBzZCBub2Rl
cyBhcmUgbm90IHNvcnRlZCBhbHBoYWJldGljYWxseS4KPj4+Pgo+Pj4+IFRoaXMgbGFzdCBwYXRj
aCBpbiB0aGlzIGJyY21mbWFjIHBhdGNoIHNlcmllcyBwcm9iYWJseSBzaG91bGQgYmUgcGlja2Vk
Cj4+Pj4gdXAgYnkgSGVpa28gaW5kZXBlbmRlbnRseSBvZiB0aGUgcmVzdCBvZiB0aGlzIHNlcmll
cy4gSXQgd2FzIHNlbnQgdG9nZXRoZXIKPj4+PiB0byBzaG93IGhvdyB0aGlzIGJyY21mbWFjIGV4
dGVuc2lvbiBmb3IgNDM1OS1zZGlvIHN1cHBvcnQgd2l0aCBSU0RCIGlzCj4+Pj4gdXNlZCBhbmQg
dGVzdGVkLgo+Pj4gbm9kZSBwbGFjZW1lbnQgbG9va3MgZ29vZCBzbyBJIGNhbiBhcHBseSBpdCwg
anVzdCBhIGdlbmVyYWwgcXVlc3Rpb25zCj4+PiBJIG9ubHkgZ290IHBhdGNoIDgvOCBhcmUgcGF0
Y2hlcyAxLTcgcmVsZXZhbnQgZm9yIHRoaXMgb25lIGFuZCB3aGF0IGFyZSB0aGV5Pwo+PiBQYXRj
aGVzIDEtNyBhcmUgdGhlIHBhdGNoZXMgdG8gc3VwcG9ydCB0aGUgQkNNNDM1OSBjaGlwc2V0IHdp
dGggU0RJTwo+PiBpbnRlcmZhY2UgaW4gdGhlIGxpbnV4IGJyY21mbWFjIG5ldC13aXJlbGVzcyBk
cml2ZXIsIHNlZSBbMV0uCj4+Cj4+IFNvIHRoaXMgcGF0Y2ggc2VyaWVzIGhhcyAyIHBhcnRzOgo+
PiBwYXRjaGVzIDEtNzogYWRkIHN1cHBvcnQgZm9yIHRoZSB3aWZpIGNoaXBzZXQgaW4gdGhlIHdp
cmVsZXNzIGRyaXZlciwKPj4gdGhpcyBoYXMgdG8gZ28gdGhyb3VnaCBuZXQtd2lyZWxlc3MKPj4g
cGF0Y2ggODogZW5hYmxlIHRoZSB3aWZpIG1vZHVsZSB3aXRoIHRoaXMgY2hpcHNldCBvbiBSb2Nr
UHJvNjQsIHRoaXMgcGF0Y2gKPiBUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uIDotKSAuCj4K
PiBBcyBwYXRjaCA4ICJvbmx5IiBkb2VzIHRoZSBjb3JlIHNkaW8gbm9kZSwgaXQgZG9lc24ndCBy
ZWFsbHkgZGVwZW5kIG9uIHRoZQo+IGVhcmxpZXIgb25lcyBhbmQgeW91IGNhbiBzdWJtaXQgYW55
IHVhcnQtaG9va3MgZm9yIGJsdWV0b290aCBvbmNlIHRoZQo+IG90aGVyIHBhdGNoZXMgbGFuZCBJ
IGd1ZXNzLgpUaGUgdWFydCBwYXJ0IGZvciBibHVldG9vdGggYWxyZWFkeSBpcyBpbjogdWFydDAu
Ckhvd2V2ZXIsIEkgaGF2ZW4ndCB0ZXN0ZWQgaWYgaXQgcmVhbGx5IHdvcmtzLgo+PiBJZiB0aGlz
IHdhcyBjb25mdXNpbmcsIHdoYXQgd291bGQgYmUgdGhlIGlkZWFsIHdheSB0byBwb3N0IHN1Y2gg
c2VyaWVzPwo+IEkgdGhpbmsgZXZlcnkgbWFpbnRhaW5lciBoYXMgc29tZSBzbGlnaHRseSBkaWZm
ZXJlbnQgcGVyc3BlY3RpdmUgb24gdGhpcywKPiBidXQgcGVyc29uYWxseSBJIGxpa2UgZ2V0dGlu
ZyB0aGUgd2hvbGUgc2VyaWVzIHRvIGZvbGxvdyB0aGUgZGlzY3Vzc2lvbiBidXQKPiBhbHNvIHRv
IGp1c3Qgc2VlIHdoZW4gdGhlIGRyaXZlci1zaWRlIGNoYW5nZXMgZ2V0IG1lcmdlZCwgYXMgdGhl
IGR0cy1wYXJ0cwo+IG5lZWQgdG8gd2FpdCBmb3IgdGhhdCBpbiBhIGxvdCBvZiBjYXNlcy4KT0ss
IHRoYW5rcy4KSSB3aWxsIGFkZCB5b3UgZm9yIHRoZSB3aG9sZSBzZXJpZXMgd2hlbiBzZW5kaW5n
IGEgdjIuCgpTb2VyZW4KPgo+IEhlaWtvCj4KPgo+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvP3Nlcmllcz0yMTM5NTEKPj4+IFRo
YW5rcwo+Pj4gSGVpa28KPj4+Cj4+Pgo+Pj4+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250
ZWNoLmRlPgo+Pj4+IENjOiBLYWxsZSBWYWxvIDxrdmFsb0Bjb2RlYXVyb3JhLm9yZz4KPj4+PiBD
YzogbGludXgtd2lyZWxlc3NAdmdlci5rZXJuZWwub3JnCj4+Pj4gQ2M6IGJyY204MDIxMS1kZXYt
bGlzdC5wZGxAYnJvYWRjb20uY29tCj4+Pj4gQ2M6IGJyY204MDIxMS1kZXYtbGlzdEBjeXByZXNz
LmNvbQo+Pj4+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnCj4+Pj4gQ2M6IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCj4+Pj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4+PiAt
LS0KPj4+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzICAgIHwg
MjEgKysrKysrKysrKysrLS0tLS0tLQo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwo+Pj4+IGluZGV4IDdmNGIyZWJhMzFkNC4u
OWZhOTI3OTBkNmUwIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvY2twcm82NC5kdHMKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+Pj4gQEAgLTcxLDEzICs3MSw2IEBACj4+Pj4g
IAkJY2xvY2stbmFtZXMgPSAiZXh0X2Nsb2NrIjsKPj4+PiAgCQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+Pj4+ICAJCXBpbmN0cmwtMCA9IDwmd2lmaV9lbmFibGVfaD47Cj4+Pj4gLQo+Pj4+
IC0JCS8qCj4+Pj4gLQkJICogT24gdGhlIG1vZHVsZSBpdHNlbGYgdGhpcyBpcyBvbmUgb2YgdGhl
c2UgKGRlcGVuZGluZwo+Pj4+IC0JCSAqIG9uIHRoZSBhY3R1YWwgY2FyZCBwb3B1bGF0ZWQpOgo+
Pj4+IC0JCSAqIC0gU0RJT19SRVNFVF9MX1dMX1JFR19PTgo+Pj4+IC0JCSAqIC0gUEROIChwb3dl
ciBkb3duIHdoZW4gbG93KQo+Pj4+IC0JCSAqLwo+Pj4+ICAJCXJlc2V0LWdwaW9zID0gPCZncGlv
MCBSS19QQjIgR1BJT19BQ1RJVkVfTE9XPjsKPj4+PiAgCX07Cj4+Pj4KPj4+PiBAQCAtNjUwLDYg
KzY0MywyMCBAQAo+Pj4+ICAJc3RhdHVzID0gIm9rYXkiOwo+Pj4+ICB9Owo+Pj4+Cj4+Pj4gKyZz
ZGlvMCB7Cj4+Pj4gKwlidXMtd2lkdGggPSA8ND47Cj4+Pj4gKwljYXAtc2QtaGlnaHNwZWVkOwo+
Pj4+ICsJY2FwLXNkaW8taXJxOwo+Pj4+ICsJZGlzYWJsZS13cDsKPj4+PiArCWtlZXAtcG93ZXIt
aW4tc3VzcGVuZDsKPj4+PiArCW1tYy1wd3JzZXEgPSA8JnNkaW9fcHdyc2VxPjsKPj4+PiArCW5v
bi1yZW1vdmFibGU7Cj4+Pj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+ICsJcGlu
Y3RybC0wID0gPCZzZGlvMF9idXM0ICZzZGlvMF9jbWQgJnNkaW8wX2Nsaz47Cj4+Pj4gKwlzZC11
aHMtc2RyMTA0Owo+Pj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4+ICt9Owo+Pj4+ICsKPj4+PiAg
JnNkbW1jIHsKPj4+PiAgCWJ1cy13aWR0aCA9IDw0PjsKPj4+PiAgCWNhcC1zZC1oaWdoc3BlZWQ7
Cj4+Pj4gLS0KPj4+PiAyLjE3LjEKPj4+Pgo+Pj4KPj4+Cj4+Cj4KPgo+CgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
