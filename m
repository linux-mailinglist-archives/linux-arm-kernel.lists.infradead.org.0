Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03E58631F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 15:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwLOp6/ANES316QeF9RwKesSXD6xqVzEEEJH8ZWEsj0=; b=o8NhFHev19ykdk
	Ovnn/nAPTyKKfIB4dgp0ORcjG4vKR8Q+wObMhgx1ZVyIIsgbke+EOcrkp7jQARQfDvEoPhondVQ5Z
	G9Skretujxicod8CwyK7ZPOJZCPPKmXiCfFkVCZO4LLm63KsYm0K9ATQgnKJc0hWLA5Hif5HSTMQr
	9ksHm5l39tIvvpbd7ZZiYD3bymeIBF8WTLy48jG9rOboXHWmdBf1cUJBE5k9eHkRjHghKRGhOY7NZ
	fBYVRN8eFye86ZOoJW1m+Aba1Gd/oJMeXHx3brD/d8Xq+DOlQBJDQ31JpmHimdhr9OU9lG2eEeVtE
	IJ3qIw45Hi1YCyRcLaFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hviSy-0000SU-0G; Thu, 08 Aug 2019 13:28:28 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hviSl-0000RW-GS
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 13:28:17 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190808132813euoutp029bf4f1d6035987d984e59d8b3f7dc2ec~49ZWSGBzb0726907269euoutp02i
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 13:28:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190808132813euoutp029bf4f1d6035987d984e59d8b3f7dc2ec~49ZWSGBzb0726907269euoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565270893;
 bh=U/A5rR+8l7g7jNeJ/egSxGUzeCSUas+qKZNNq+UCjaw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=VTbSLaIgAIp+kcbfAoRpr4fnn6DnRdGWZ7tqA/ZipuEBLDEdIbh6U5rdfZyZD9ynx
 mfJNhvdphgF0MPGQ36skQsW6dxYcaTggGGtIZecKFsF+o6UpIA0bu9bexc0IlAB5dQ
 ZGdecqIO7mQtX4COqu8MYT4klm1kC31tResrmigc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190808132812eucas1p1b1d6e7152506902d4da48cad06abc3ce~49ZV0utpK0308103081eucas1p1G;
 Thu,  8 Aug 2019 13:28:12 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 17.F1.04374.C632C4D5; Thu,  8
 Aug 2019 14:28:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190808132811eucas1p21e22e644189dfdc6f821960ad485c3be~49ZVAcg2T1167911679eucas1p2L;
 Thu,  8 Aug 2019 13:28:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190808132811eusmtrp2a586366cc8b38427ae13b8180f560272~49ZUx5axJ1364413644eusmtrp2A;
 Thu,  8 Aug 2019 13:28:11 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-87-5d4c236c60c0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 91.C1.04166.B632C4D5; Thu,  8
 Aug 2019 14:28:11 +0100 (BST)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20190808132810eusmtip1a0eeb0ddd69beb3e0c8498231f71d69a~49ZUKGQ0Z1201812018eusmtip1R;
 Thu,  8 Aug 2019 13:28:10 +0000 (GMT)
Message-ID: <b4d52e266a904aca3ecf8e5a4a6dced91dddf539.camel@partner.samsung.com>
Subject: Re: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
Date: Thu, 08 Aug 2019 15:28:09 +0200
In-Reply-To: <4155482f-8f8f-a659-63ba-25701540b2c5@linaro.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRT253bvruLs5xQ8mGku/UNJTQu8ZIyioBUSQkKQWc68qOSLXbU0
 qJmvNJqPLG0mDhJTw0fTxFkKTm2YL0wzaT5CUSuYpVOiLMt5J/bf951zvvN9Bw7FE/UQLlRc
 YgojT5TFi0lbftubn8O+8QdCIg615LnTL8qbCPrD2hJBV/UOE/T4+jeSLuvUkHTJbBGfHhlp
 FtCa+QmCHut4QtKm+72ILh/psqYbeqcFtCGzlqTLH3whj9tLNfX5pHRq4jUpnb2nt5a2VN+W
 KlvrkdSkcQslL9oei2bi49IYub8k0jbW2F2Pkqe8bjxVvhcoUPW+AmRDAT4CraNzvAJkS4lw
 LYJ247KFrCGoMeRYiAmBqrKftyOZHCwjucYzBEUKLcGRRQQba43IPCXEofBYV0OasSOOAvXc
 KGHGJD4Nm0vj2wInvIpgqLoCmQkPryBQ/Mrb8qAoPvaCRUOGWWCDJWDonic564NgfKvkm0eE
 2AH+tDuayzzsDlkvKyzpPgpgoC+Kw6cgO7OZz2FH+KpvFXDYFf5qq6w5zMKCdnY7D2AFAk1N
 r2VRMPTozaGpLQNvaOrw58onwKjs204J2B4mjQ5cBHsoaSuzlIVwN1fEQR9Qb4RzQoA7zycs
 u6WQPbckKEIeqt1TVP+dotp1VSNePXJmUtmEGIY9nMhc92NlCWxqYozf1aQEDdp6rYFN/Xo7
 6vodpUOYQmI7ocIjJEJEyNLY9AQdAoondhLOpJ2JEAmjZekZjDzpijw1nmF1aC/FFzsLb1p9
 ChfhGFkKc41hkhn5TteasnFRIJxfcC5wcYEskVRKwrwzgx08I0XJpYWREaUd502FJqLDM8QX
 2z2SZAUNLAQWF/folZ2BrmfbrEyKiZmSBf/VoDDDyVXc3xkayPxImRvbfKXNuTSz5/KKx0Ni
 zU2SXS5qOvr5+3LSel2jwwViuuHdrYBctaozw2l9/2BfcB09JOazsbIAH56clf0DdkTVaFYD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsVy+t/xu7rZyj6xBo1TlC02zljPanH9y3NW
 i/lHzrFaXPn6ns1i+t5NbBaT7k9gsTh/fgO7xabH11gtLu+aw2bxufcIo8WM8/uYLNYeuctu
 cbtxBZvFjMkv2Rz4PDat6mTzuHNtD5vH/e7jTB6bl9R79G1ZxejxeZNcAFuUnk1RfmlJqkJG
 fnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsbbg6sYC+6oVizuu8re
 wLhEtouRk0NCwETixpnpbCC2kMBSRokfFyIh4hISH9ffYIWwhSX+XOuCqnnCKHHhuQOIzSsQ
 IDHz0DKwuLBAksSCRxfB6tkE3CX+Pb8CZHNxiAh8ZpQ4vOgTC0iCGcS5sSyni5GDg0VAVeLZ
 7SqQMKeAncTtg4/ZQOqFBJqYJZbvXsgEUa8p0br9NzvEEToSb0/1sYD08goISvzdIQxRIi/R
 vHU28wRGwVlIOmYhVM1CUrWAkXkVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYDRuO/Zz8w7G
 SxuDDzEKcDAq8fA2KPrECrEmlhVX5h5ilOBgVhLhvVfmGSvEm5JYWZValB9fVJqTWnyI0RTo
 nYnMUqLJ+cBEkVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgdF7
 UdyD2rMfd/2ay7vb2KBRYavgk+nXbefw/Aqxf3o2qKja+tPMrOItpzjtp7NPu8CnEfdEVdbz
 yNlHrgIN9zgiji3//WPvasGrrv0me250Bh3y3hfpZtFjFdBks//oHNPpfazXmtXFt+XWzVGV
 f/BO5793bmfV4oY+3WD/c0UT9zMr6u2UkVNiKc5INNRiLipOBABwbEbE3AIAAA==
X-CMS-MailID: 20190808132811eucas1p21e22e644189dfdc6f821960ad485c3be
X-Msg-Generator: CA
X-RootMTR: 20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b@eucas1p2.samsung.com>
 <20190723122016.30279-10-a.swigon@partner.samsung.com>
 <6e8b2081-2fb3-9ab8-37d1-8b5fe5fd8e11@linaro.org>
 <62557522be4924a01d3822d4734c30f2965c608b.camel@partner.samsung.com>
 <4155482f-8f8f-a659-63ba-25701540b2c5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_062815_755380_829059D9 
X-CRM114-Status: GOOD (  28.97  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Bart=C5=82omiej_?= =?UTF-8?Q?=C5=BBo=C5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIDIwMTktMDgtMDcgYXQgMTc6MjEgKzAzMDAsIEdlb3JnaSBEamFrb3Ygd3Jv
dGU6Cj4gSGkgQXJ0dXIsCj4gCj4gT24gOC8xLzE5IDEwOjU5LCBBcnR1ciDFmndpZ2/FhCB3cm90
ZToKPiA+IEhpIEdlb3JnaSwKPiA+IAo+ID4gT24gRnJpLCAyMDE5LTA3LTI2IGF0IDExOjA1ICsw
MzAwLCBHZW9yZ2kgRGpha292IHdyb3RlOgo+ID4gPiBIaSBBcnR1ciwKPiA+ID4gCj4gPiA+IE9u
IDcvMjMvMTkgMTU6MjAsIEFydHVyIMWad2lnb8WEIHdyb3RlOgo+ID4gPiA+IFRoaXMgcGF0Y2gg
YWRkcyBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0eSB0byB0aGUgZXh5bm9zLWJ1cyBkZXZmcmVx
Cj4gPiA+ID4gZHJpdmVyLgo+ID4gPiA+IAo+ID4gPiA+IFRoZSBTb0MgdG9wb2xvZ3kgaXMgYSBn
cmFwaCAob3IsIG1vcmUgc3BlY2lmaWNhbGx5LCBhIHRyZWUpIGFuZCBtb3N0IG9mCj4gPiA+ID4g
aXRzCj4gPiA+ID4gZWRnZXMgYXJlIHRha2VuIGZyb20gdGhlIGRldmZyZXEgcGFyZW50LWNoaWxk
IGhpZXJhcmNoeSAoY2YuCj4gPiA+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2RldmZyZXEvZXh5bm9zLWJ1cy50eHQpLiBUaGUgcHJldmlvdXMKPiA+ID4gPiBwYXRjaCBhZGRz
IG1pc3NpbmcgZWRnZXMgdG8gdGhlIERUICh1bmRlciB0aGUgbmFtZSAncGFyZW50JykuIER1ZSB0
bwo+ID4gPiA+IHVuc3BlY2lmaWVkIHJlbGF0aXZlIHByb2Jpbmcgb3JkZXIsIC1FUFJPQkVfREVG
RVIgbWF5IGJlIHByb3BhZ2F0ZWQgdG8KPiA+ID4gPiBndWFyYW50ZWUgdGhhdCBhIGNoaWxkIGlz
IHByb2JlZCBiZWZvcmUgaXRzIHBhcmVudC4KPiA+ID4gPiAKPiA+ID4gPiBFYWNoIGJ1cyBpcyBu
b3cgYW4gaW50ZXJjb25uZWN0IHByb3ZpZGVyIGFuZCBhbiBpbnRlcmNvbm5lY3Qgbm9kZSBhcwo+
ID4gPiA+IHdlbGwKPiA+ID4gPiAoY2YuIERvY3VtZW50YXRpb24vaW50ZXJjb25uZWN0L2ludGVy
Y29ubmVjdC5yc3QpLCBpLmUuIGV2ZXJ5IGJ1cwo+ID4gPiA+IHJlZ2lzdGVycwo+ID4gPiA+IGl0
c2VsZiBhcyBhIG5vZGUuIE5vZGUgSURzIGFyZSBub3QgaGFyZGNvZGVkIGJ1dCByYXRoZXIgYXNz
aWduZWQgYXQKPiA+ID4gPiBydW50aW1lLCBpbiBwcm9iaW5nIG9yZGVyIChzdWJqZWN0IHRvIHRo
ZSBhYm92ZS1tZW50aW9uZWQgZXhjZXB0aW9uCj4gPiA+ID4gcmVnYXJkaW5nIHJlbGF0aXZlIG9y
ZGVyKS4gVGhpcyBhcHByb2FjaCBhbGxvd3MgZm9yIHVzaW5nIHRoaXMgZHJpdmVyCj4gPiA+ID4g
d2l0aAo+ID4gPiA+IHZhcmlvdXMgRXh5bm9zIFNvQ3MuCj4gPiA+IAo+ID4gPiBJIGFtIG5vdCBm
YW1pbGlhciB3aXRoIHRoZSBFeHlub3MgYnVzIHRvcG9sb2d5LCBidXQgaXQgc2VlbXMgdG8gbWUg
dGhhdAo+ID4gPiBpdCdzIG5vdAo+ID4gPiByZXByZXNlbnRlZCBjb3JyZWN0bHkuIEFuIGludGVy
Y29ubmVjdCBwcm92aWRlciB3aXRoIGp1c3QgYSBzaW5nbGUgbm9kZQo+ID4gPiAocG9ydCkKPiA+
ID4gaXMgb2RkLiBJIHdvdWxkIGV4cGVjdCB0aGF0IGVhY2ggcHJvdmlkZXIgY29uc2lzdHMgb2Yg
bXVsdGlwbGUgbWFzdGVyIGFuZAo+ID4gPiBzbGF2ZQo+ID4gPiBub2Rlcy4gVGhpcyBkYXRhIHdv
dWxkIGJlIHVzZWQgYnkgYSBmcmFtZXdvcmsgdG8gdW5kZXJzdGFuZCB3aGF0IGFyZSB0aGUKPiA+
ID4gbGlua3MKPiA+ID4gYW5kIGhvdyB0aGUgdHJhZmZpYyBmbG93cyBiZXR3ZWVuIHRoZSBJUCBi
bG9ja3MgYW5kIHRocm91Z2ggd2hpY2ggYnVzZXMuCj4gPiAKPiA+IFRvIHN1bW1hcml6ZSB0aGUg
ZXh5bm9zLWJ1cyB0b3BvbG9neVsxXSB1c2VkIGJ5IHRoZSBkZXZmcmVxIGRyaXZlcjogVGhlcmUK
PiA+IGFyZQo+ID4gbWFueSBkYXRhIGJ1c2VzIGZvciBkYXRhIHRyYW5zZmVyIGluIFNhbXN1bmcg
RXh5bm9zIFNvQy4gRXZlcnkgYnVzIGhhcyBpdHMKPiA+IG93bgo+ID4gY2xvY2suIEJ1c2VzIG9m
dGVuIHNoYXJlIHBvd2VyIGxpbmVzLCBpbiB3aGljaCBjYXNlIG9uZSBvZiB0aGUgYnVzZXMgb24g
dGhlCj4gPiBwb3dlciBsaW5lIGlzIHJlZmVycmVkIHRvIGFzICdwYXJlbnQnIChvciBhcyAnZGV2
ZnJlcScgaW4gdGhlIERUKS4gSW4gdGhlCj4gPiBwYXJ0aWN1bGFyIGNhc2Ugb2YgRXh5bm9zNDQx
MlsxXVsyXSwgdGhlIHRvcG9sb2d5IGNhbiBiZSBleHByZXNzZWQgYXMKPiA+IGZvbGxvd3M6Cj4g
PiAKPiA+IGJ1c19kbWMKPiA+IC0tIGJ1c19hY3AKPiA+IC0tIGJ1c19jMmMKPiA+IAo+ID4gYnVz
X2xlZnRidXMKPiA+IC0tIGJ1c19yaWdodGJ1cwo+ID4gLS0gYnVzX2Rpc3BsYXkKPiA+IC0tIGJ1
c19mc3lzCj4gPiAtLSBidXNfcGVyaQo+ID4gLS0gYnVzX21mYwo+ID4gCj4gPiBXaGVyZSBidXNf
ZG1jIGFuZCBidXNfbGVmdGJ1cyBwcm9iYWJseSBjb3VsZCBiZSByZWZlcnJlZCB0byBhcyBtYXN0
ZXJzLCBhbmQKPiA+IHRoZQo+ID4gZm9sbG93aW5nIGluZGVudGVkIG5vZGVzIGFzIHNsYXZlcy4g
UGF0Y2ggMDgvMTEgb2YgdGhpcyBSRkMgYWRkaXRpb25hbGx5Cj4gPiBhZGRzCj4gPiB0aGUgZm9s
bG93aW5nIHRvIHRoZSBEVDoKPiA+IAo+ID4gYnVzX2RtYwo+ID4gLS0gYnVzX2xlZnRidXMKPiA+
IAo+ID4gV2hpY2ggbWFrZXMgdGhlIHRvcG9sb2d5IGEgdmFsaWQgdHJlZS4KPiA+IAo+ID4gVGhl
IGV4eW5vcy1idXMgY29uY2VwdCBpbiBkZXZmcmVxWzNdIGlzIGRlc2lnbmVkIGluIHN1Y2ggYSB3
YXkgdGhhdCBldmVyeQo+ID4gYnVzIGlzCj4gPiBwcm9iZWQgc2VwYXJhdGVseSBhcyBhIHBsYXRm
b3JtIGRldmljZSwgYW5kIGlzIGEgbGFyZ2VseSBpbmRlcGVuZGVudCBlbnRpdHkuCj4gPiAKPiA+
IFRoaXMgUkZDIHByb3Bvc2VzIGFuIGV4dGVuc2lvbiB0byB0aGUgZXhpc3RpbmcgZGV2ZnJlcSBk
cml2ZXIgdGhhdCBiYXNpY2FsbHkKPiA+IHByb3ZpZGVzIGEgc2ltcGxlIFFvUyB0byBlbnN1cmUg
bWluaW11bSBjbG9jayBmcmVxdWVuY3kgZm9yIHNlbGVjdGVkIGJ1c2VzCj4gPiAocG9zc2libHkg
b3ZlcnJpZGluZyBkZXZmcmVxIGdvdmVybm9yIGNhbGN1bGF0aW9ucykgdXNpbmcgdGhlIGludGVy
Y29ubmVjdAo+ID4gZnJhbWV3b3JrLgo+ID4gCj4gPiBUaGUgaGllcmFyY2h5IGlzIG1vZGVsbGVk
IGluIHN1Y2ggYSB3YXkgdGhhdCBldmVyeSBidXMgaXMgYW4gaW50ZXJjb25uZWN0Cj4gPiBub2Rl
Lgo+ID4gT24gdGhlIG90aGVyIGhhbmQsIHdoYXQgaXMgY29uc2lkZXJlZCBhbiBpbnRlcmNvbm5l
Y3QgcHJvdmlkZXIgaGVyZSBpcyBxdWl0ZQo+ID4gYXJiaXRyYXJ5LCBidXQgZm9yIHRoZSByZWFz
b25zIG1lbnRpb25lZCBpbiB0aGUgYWJvdmUgcGFyYWdyYXBoLCB0aGlzIFJGQwo+ID4gYXNzdW1l
cyB0aGF0IGV2ZXJ5IGJ1cyBpcyBhIHByb3ZpZGVyIG9mIGl0c2VsZiBhcyBhIG5vZGUuIFVzaW5n
IGFuCj4gPiBhbHRlcm5hdGl2ZQo+IAo+IElJVUMsIGluIGNhc2Ugd2Ugd2FudCB0byB0cmFuc2Zl
ciBkYXRhIGJldHdlZW4gdGhlIGRpc3BsYXkgYW5kIHRoZSBtZW1vcnkKPiBjb250cm9sbGVyLCB0
aGUgcGF0aCB3b3VsZCBsb29rIGxpa2UgdGhpczoKPiAKPiBkaXNwbGF5IC0tPiBidXNfZGlzcGxh
eSAtLT4gYnVzX2xlZnRidXMgLS0+IGJ1c19kbWMgLS0+IG1lbW9yeQo+IAo+IEJ1dCB0aGUgYnVz
X2Rpc3BsYXkgZm9yIGV4YW1wbGUgd291bGQgaGF2ZSBub3Qgb25lLCBidXQgdHdvIG5vZGVzIChw
b3J0cyksCj4gcmlnaHQ/ICBPbmUgcmVwcmVzZW50aW5nIHRoZSBsaW5rIHRvIHRoZSBkaXNwbGF5
IGNvbnRyb2xsZXIgYW5kIGFub3RoZXIgb25lCj4gcmVwcmVzZW50aW5nIHRoZSBsaW5rIHRvIGJ1
c19sZWZ0YnVzPyBTbyBpIHRoaW5rIHRoYXQgYWxsIHRoZSBidXNlcyBzaG91bGQKPiBoYXZlIGF0
IGxlYXN0IHR3byBub2RlcywgdG8gcmVwcmVzZW50IGVhY2ggZW5kIG9mIHRoZSB3aXJlLgoKSSBk
byBub3QgdGhpbmsgd2UgcmVhbGx5IG5lZWQgdGhhdCBmb3Igb3VyIHNpbXBsZSB0cmVlIGhpZXJh
cmNoeS4gT2YgY291cnNlLCBJCmNhbiBzcGxpdCBldmVyeSB0cmVlIG5vZGUgaW50byB0d28gbm9k
ZXMvcG9ydHMgKGUuZy4sICdpbicgZm9yIGNoaWxkcmVuIGFuZAonb3V0JyBmb3IgcGFyZW50KSwg
YnV0IG5laXRoZXIgJ2Rpc3BsYXknIG5vciAnbWVtb3J5JyBmcm9tIHlvdXIgZGlhZ3JhbSBhYm92
ZQphcmUgcmVnaXN0ZXJlZCB3aXRoIHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrIChvbmx5IGJ1
c2VzIGFyZSkuIFRoZSBkZXZmcmVxCmRldmljZXMgdXNlZCBpbiB0aGUgZHJpdmVyIGFyZSB2aXJ0
dWFsIGFueXdheS4KCj4gPiBzaW5nbGV0b24gcHJvdmlkZXIgYXBwcm9hY2ggd2FzIGRlZW1lZCBt
b3JlIGNvbXBsaWNhdGVkIHNpbmNlIHRoZSAnZGV2Jwo+ID4gZmllbGQgaW4KPiA+ICdzdHJ1Y3Qg
aWNjX3Byb3ZpZGVyJyBoYXMgdG8gYmUgc2V0IHRvIHNvbWV0aGluZyBtZWFuaW5nZnVsIGFuZCB3
ZSBhcmUgdGllZAo+ID4gdG8KPiA+IHRoZSAnc2Ftc3VuZyxleHlub3MtYnVzJyBjb21wYXRpYmxl
IHN0cmluZyBpbiB0aGUgZHJpdmVyIChhbmQgbXVsdGlwbGUKPiA+IGluc3RhbmNlcwo+ID4gb2Yg
ZXh5bm9zLWJ1cyBwcm9iZWQgaW4gaW5kZXRlcm1pbmF0ZSByZWxhdGl2ZSBvcmRlcikuCj4gPiAK
PiAKPiBTdXJlLCB0aGUgcmVzdCBtYWtlcyBzZW5zZSB0byBtZS4KPiAKPiBUaGFua3MsCj4gR2Vv
cmdpCgpSZWdhcmRzLAotLSAKQXJ0dXIgxZp3aWdvxYQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBv
bGFuZApTYW1zdW5nIEVsZWN0cm9uaWNzCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
