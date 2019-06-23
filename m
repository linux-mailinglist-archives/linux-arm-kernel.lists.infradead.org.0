Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2172F4FE44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 01:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+ie2fQ7N5beLBs4yMp1M4bHcXqMKty/nWHGeOSXApk=; b=AivU8+8pEvcnAj
	eRPbaE5Bgi/tJ5DPCxRXskKd075GcbZzrf/SclHp3w7wNvGyxQ+XBkTU+nNtL68K5OpvDlQA2p8Lc
	YbLZxt7M6iZ2awUK+4C3oMCbCqpxyNMKSABGlsYzo3sCxyW8ml0BSGgDlf44rnv91yqpvKFSRdDUv
	xrMSJDeBTYrkdD9ydEn10/gCufV0wVq1d6IzYf1C/2dUa74vqACyzALePD1DMET4tSrpSVM7MzRpv
	ALpSicKNkwfYyvUsRm9lp7WzOwM2JKqe2NDn8c7ttX7eUy4dbm9fRLwjbZKhtlhwuSMjNxrrLr99G
	wF/ifY+lqR4mvf+43xVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfC2j-00021A-6v; Sun, 23 Jun 2019 23:37:05 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfC2V-00020W-Ax
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 23:36:54 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190623233638epoutp010ab17d98aebef38f3e54adf87f11f854~q_Bb8GeKZ2191021910epoutp01s
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 23:36:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190623233638epoutp010ab17d98aebef38f3e54adf87f11f854~q_Bb8GeKZ2191021910epoutp01s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561332998;
 bh=gVdC7W3ldmM3ohxP3IShUQy55UMe0oYxTPCOE/6tAp4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=a79KMVYmCPbz5nwheKxRjHWOh5KSF712suwcwku5/tdnPGdRG8Etpic6jwCY0+Y3a
 vdKcEh6t/Fy3IPtGd3BgrIekJUt2n9YdKEqqFsXsK+7eiVomW5Kv0Ymfzo78Iuw8Uy
 s0o9s9OEQ2kQ2ZmwEuanvc7PgHLhnAKd4L4og3Pk=
Received: from epsmges1p5.samsung.com (unknown [182.195.40.154]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190623233634epcas1p4fe5ea4b0f69ce7ab48e9fb322831f662~q_BYg_Xme3169831698epcas1p4D;
 Sun, 23 Jun 2019 23:36:34 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 D1.9E.04108.20D001D5; Mon, 24 Jun 2019 08:36:34 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190623233633epcas1p16ab9635c74bd01f3a7b0828eedf1f9d2~q_BXxNr2T1082210822epcas1p1f;
 Sun, 23 Jun 2019 23:36:33 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190623233633epsmtrp192a9eade0fcbece0e6e69272d2ecd321~q_BXtjTUt1920219202epsmtrp1c;
 Sun, 23 Jun 2019 23:36:33 +0000 (GMT)
X-AuditID: b6c32a39-8b7ff7000000100c-4a-5d100d02d9e1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C9.12.03692.10D001D5; Mon, 24 Jun 2019 08:36:33 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190623233633epsmtip1364fbdd2bc629b95785e2adfcd77b4c0~q_BXdmHmE3204032040epsmtip1G;
 Sun, 23 Jun 2019 23:36:33 +0000 (GMT)
Subject: Re: [PATCH v3] arm64: defconfig: Enable Panfrost and Lima drivers
To: Krzysztof Kozlowski <krzk@kernel.org>, cwchoi00@gmail.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <6edbe882-314c-85e1-4109-7c3b324dc7ab@samsung.com>
Date: Mon, 24 Jun 2019 08:39:09 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPcFFY08R1H-DrrzX2BC3L8x4NPJTP7nDn9yixAvmaiF9Q@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TbUxbVRjHc3p7b8tG3bFs8kiisKszAVPWO9ZxMLA5ZdsN8gGmH4yR1Ru4
 FkLf7G0X50yEbSLtlonxJdIN0FhRGASonTLY6ESGssUVQRHZqpgNsoEDkUkcM8S2t4t8+z/n
 +T3nn/95UVPaalWKusLqFB1Wwcwya5RffpOu1yk0uETf0ptB3hycRuRScE5J5puPITJ94XFy
 IdSrIG1X+hEZvvUnQ2776xgSCnWqyOfhBZr4r43RZLTnJEM+DPUpSPtAWEUmbwYRufjzIkNu
 BJLJkauGJ7V8+8JvNN/W2Ib4xraDfHfYh/gz3rCK97e6Gf7q2FmG/8L3Bv/jd4dovmuuW8Ef
 D7Qi/uSdJSW/6H+4SPNCZW65KJSJjjTRWmorq7Ca8thnnjU+bTRs03M6Lodks2lWwSLmsfmF
 RbrdFeZIQDZtv2B2RZaKBEliN2/PddhcTjGt3CY581jRXma259gzJcEiuaymzFKb5QlOr99i
 iIAvVZb7GkLIXodfXa7uRFXorMaDEtSAt8L4H26VB61Ra3E3gunmESQXfyHwnJ6l5WIJQftX
 /1L3Rj5evhSnziG4OOJj5GIeQcP344oolYQLYPn9KSaq1+M86D3RqIxCFB6kofXwmDLaYHAG
 BG+Mx6B1eCP89M81FNUavB1aPvOpolqJN8FSkye26Qb8PIwGeuLM/TBUfz22TwIuht/7FmMM
 hZNh4npTXKfC4dMnqKgx4Dsq+KC+FskZ8qH66IJC1kkw821AJesUuPl2TVwfhJahAUYerkUQ
 CA7TciMLgp++GxlWRxzSoaNns7y8Ec7cbUCy8X0w9/cxOooA1kBtjVZGHoHRyXDc9kH45C03
 U4dY76o43lURvKsieP83+wgpW9EDol2ymESJsxtW37cfxZ5/Rk43Grxc2I+wGrGJGty5rkRL
 C/ulA5Z+BGqKXa9JNCeWaDVlwoHXRIfN6HCZRakfGSKn/Q6VsqHUFvlMVqeRM2zJysoiW7lt
 Bo5jkzXGtb+8qMUmwSlWiqJddNybU6gTUqpQrnsomLqjq/7ro9N7dAXS5K1z54+YX96Vfmp0
 5+DePZP8SFfSTElOqklZUDz8Q3Yfcewr3l115W6+53Ldpp0Dex+1HXdXFSa80gtrm1+fWJk4
 RS3tqk3NdjVRs3O07teVYE3hQ8Nsl9QxFZ6lZh7LPH8bdwzsmD9k27fy1HNTzve0rFIqF7gM
 yiEJ/wHiKQPWFAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRiA+3bOzo7D4de09qmhtajQyLISvx8pkVaHMrILUYLYyINa21w7
 almQlhZ4QUZR1rSptXLKBrYsLEVxNjWFllka5iqvqKl5S8oScluB/x7e93l4/7w0If5G+tBJ
 yhRWrZTJpZSQfN4k9dsCRDB225hhO77ePAxwe8Mkib8/zgd42LoZW221PGz8ZAH47cQUhefM
 GgrbbFUCbLBP87F5oIuPO18WU/iurZ6HTa/sAvx1tAHgtu5ZCo9US3B2b8huMWOa/sJnjDoj
 YHTGy0yNXQ+YF1q7gDFX5lBMb1cdxTzVZzDvW6/xmSeTNTymoLoSMMW/5klm1uwXLYoR7opn
 5UlprHpr+Glhov6+Dag08OLC1SqQCepEucCNRnAnKltoB7lASIthLUDdDxsJ18Ib3emwLjG9
 xJ6oqYlzORMAGUp+kw7HEx5AC7eHKAd7wTBUW6QjHRIB2/joVv4o31U08tAjw5zTomAgahj5
 6GQPuA59+DkAHCyC4aiiXC9wMAk3oPmSXJ6DV8GTqOBGEeVyVqLX9wadl93gEdRXP+t0CLgJ
 /dG9I1wsQT2DJf/m/ijrWRGhAZ7aZbl2WaJdlmiXJaWArATerIpTJCi4YFWwkr0QxMkUXKoy
 IehMssIMnC8QGFADOvVxFgBpIHUXwSqPWDFflsalKywA0YTUS+Qud48Vi+Jl6ZdYdXKcOlXO
 chbgS5NSiWhI2XxKDBNkKew5llWx6v9bHu3mkwmM0rIx94iOEwcbVudFxB9uLRULKvyz+7P8
 80x7i49Hro2Ybpf0makoqiN6pu7KvjeqkLXjkVzhoYD9R8+P14RK1vRkLg57caRYgAsXo2YG
 IltI8+fsmJtEVFHYnpH6dF9NeYvQOrk+9IfEdKz/waQ9Y8eU/GzOvKRyY1j/CkGmlOQSZcGB
 hJqT/QXGKxu3/gIAAA==
X-CMS-MailID: 20190623233633epcas1p16ab9635c74bd01f3a7b0828eedf1f9d2
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190623192007epcas4p2a3995bb00091b436562828fceb6ff790
References: <20190621180208.25361-7-krzk@kernel.org>
 <20190622191838.29850-1-krzk@kernel.org>
 <CAGTfZH2g6E2pCEtqjfCd+PjEzjwc2AB75LXJfCeO+PcYLiLTUw@mail.gmail.com>
 <CGME20190623192007epcas4p2a3995bb00091b436562828fceb6ff790@epcas4p2.samsung.com>
 <CAJKOXPcFFY08R1H-DrrzX2BC3L8x4NPJTP7nDn9yixAvmaiF9Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_163652_524676_76E4EA1B 
X-CRM114-Status: GOOD (  22.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Simon Horman <horms+renesas@verge.net.au>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDYuIDI0LiDsmKTsoIQgNDoxNiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBP
biBTdW4sIDIzIEp1biAyMDE5IGF0IDA2OjMxLCBDaGFud29vIENob2kgPGN3Y2hvaTAwQGdtYWls
LmNvbT4gd3JvdGU6Cj4+Cj4+IEhpIEtyenlzenRvZiwKPj4KPj4gMjAxOeuFhCA27JuUIDIz7J28
ICjsnbwpIOyYpOyghCA0OjIwLCBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+
64uY7J20IOyekeyEsToKPj4+Cj4+PiBFbmFibGUgc3VwcG9ydCBmb3IgTWFsaSBHUFUgd2l0aCBQ
YW5mcm9zdCBhbmQgTGltYSBkcml2ZXJzIGZvcjoKPj4+IDEuIFNhbXN1bmcgRXh5bm9zNTQzMyBh
bmQgRXh5bm9zNyAoaGF2aW5nIE1hbGkgVDc2MCksCj4+PiAyLiBBbGx3aW5lciBBNjQgYW5kIEg1
IChNYWxpIDQwMC80NTApLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dz
a2kgPGtyemtAa2VybmVsLm9yZz4KPj4+Cj4+PiAtLS0KPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIHYx
Ogo+Pj4gMS4gRW5hYmxlIExpbWEgZHJpdmVyCj4+PiAtLS0KPj4+ICBhcmNoL2FybTY0L2NvbmZp
Z3MvZGVmY29uZmlnIHwgMyArKy0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29uZmlncy9k
ZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4+PiBpbmRleCBmYmJjMDY1
NDE1ZDQuLjNkMzE2MTEzNjhhZiAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvY29uZmlncy9k
ZWZjb25maWcKPj4+ICsrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKPj4+IEBAIC01
MTgsNiArNTE4LDggQEAgQ09ORklHX0RSTV9ISVNJX0hJQk1DPW0KPj4+ICBDT05GSUdfRFJNX0hJ
U0lfS0lSSU49bQo+Pj4gIENPTkZJR19EUk1fTUVTT049bQo+Pj4gIENPTkZJR19EUk1fUEwxMTE9
bQo+Pj4gK0NPTkZJR19EUk1fTElNQT1tCj4+PiArQ09ORklHX0RSTV9QQU5GUk9TVD1tCj4+PiAg
Q09ORklHX0ZCPXkKPj4+ICBDT05GSUdfRkJfTU9ERV9IRUxQRVJTPXkKPj4+ICBDT05GSUdfQkFD
S0xJR0hUX0dFTkVSSUM9bQo+Pj4gQEAgLTcxOCw3ICs3MjAsNiBAQCBDT05GSUdfQVJDSF9URUdS
QV8xOTRfU09DPXkKPj4+ICBDT05GSUdfQVJDSF9LM19BTTZfU09DPXkKPj4+ICBDT05GSUdfU09D
X1RJPXkKPj4+ICBDT05GSUdfVElfU0NJX1BNX0RPTUFJTlM9eQo+Pj4gLUNPTkZJR19ERVZGUkVR
X0dPVl9TSU1QTEVfT05ERU1BTkQ9eQo+Pgo+PiBFeHlub3M1NDMzLXRtMiBib2FyZCBzdXBwb3J0
IHRoZSBleHlub3MtYnVzIGRldmljZSB3aGljaAo+PiB1c2VkIHRoZSBzaW1wbGVfb25kbWVuYWQg
Z292ZXJub3Igb2YgZGV2ZnJlcS4KPj4gV2h5IGRvIHlvdSByZW1vdmUgdGhpcyBjb25maWd1cmF0
aW9uIGZyb20gdGhlIGRlZmNvbmZpZz8KPiAKPiBJdCBpcyBzZWxlY3RlZCBieSBkZWZhdWx0IGJ5
IERSTV9QQU5GUk9TVC4gVGhlIGRpZmZlcmVuY2UgaXMgdGhhdAo+IFBBTkZST1NUIHNlbGVjdHMg
aXQgYXMgbW9kdWxlLiBUaGUgJ3knIGlzIGNob3NlbiBiZWNhdXNlIG9mOgo+ICAgU0NTSV9VRlNI
Q0QgWz15XSAmJiBTQ1NJX0xPV0xFVkVMIFs9eV0gJiYgU0NTSSBbPXldICYmIFNDU0lfRE1BIFs9
eV0KCldoZW4gSSB0cmllZCB0byBmaW5kIHRoZSBoaXN0b3J5IG9mIENPTkZJR19ERVZGUkVRX0dP
Vl9TSU1QTEVfT05ERU1BTkQgCmZvciBkZWZjb25maWcsIHRoZSBmb2xsb3dpbmcgcGF0Y2hbMV0g
YWRkZWQgdGhpcyBjb25maWd1cmF0aW9uLgpbMV0gYjk3MmZmNzVmMjkzOGMzOWUyMjA1YzIzZWEw
ZTUzMWQzNmIyN2Y4NgotICJhcm02NDogZGVmY29uZmlnOiBFbmFibGUgVUZTIG9uIG1zbTg5OTYi
CgpJIHRoaW5rIHRoYXQgdGhpcyBwYXRjaCB3aWxsIGFmZmVjdCB0aGUgb3ByYXRpb24gb2YgJ1VT
RiBvbiBtc204OTk4Jy4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVs
ZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
