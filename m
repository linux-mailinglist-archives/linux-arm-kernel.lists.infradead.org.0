Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FBB12D7DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 11:23:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDzdnx9OnFz/jdHrIUhJ5O2prdrL0k4bDtFHCmLwFss=; b=f9ZuwUxqpIg2JE
	9sL2yBJ3ZYZ8du09/U1iKvmP37lI036sgvC1es0aY3f5NNzOqffmBpirBk9LQuI8m2pPQk41deZlr
	XMDU9Kgkr2X/T50I7UHQmBGa/jSasU0LubqFMUTeFDOeXQoFpsjxN0p2InnO2MWKbRXm0I/OXhtco
	ZzN5O3nnEXzp2Mu6Bt1f0PPiQT9Hz/OcWS40odhCOIU8OCdZeTF/v/koGT6JHkWqI7bsbVKfHleLJ
	RjRXIHcIMeWnpjH5sAy3Dyg69drBtq0nnU1/GMghkjxR+jhAXYq9E4Ea8DIZULYJpAa+XYZbgQ3+Y
	HJeuNbxzLS0c33cKZRxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEgM-0001Y7-1G; Tue, 31 Dec 2019 10:23:22 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEgA-0001XH-2U
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 10:23:12 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191231102302euoutp02bf8496060735e31ce7c009fb225c4e30~lbaEKkOQ22580225802euoutp02t
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 10:23:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191231102302euoutp02bf8496060735e31ce7c009fb225c4e30~lbaEKkOQ22580225802euoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1577787782;
 bh=wa+0vRXyiLRDiIsWEtqTDc/k5dC7lQT5/Cwx2rCbUiI=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=JIhPDyQActtBtpG9IQadn49E36hPXNz+M8jmCSzC8QtW/E6HSAW/m9189BNqq5cPZ
 WfgSXxXiAwnr3l6c2pMsmPdDhWswBZ6Ktk3Tc/ti9+wWhoiF9Ju3Lo+gS1y8YaV4ZM
 /y88DYLB2QWpJAsTp6591sZpq/msRR5UGv7ShJzw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191231102302eucas1p13c0c38b38ed8a783376d5b6761e4ad13~lbaDxV7n81797217972eucas1p1v;
 Tue, 31 Dec 2019 10:23:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 7C.0D.61286.6812B0E5; Tue, 31
 Dec 2019 10:23:02 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191231102302eucas1p2c93ec388a3a90051d519d7e169ff5776~lbaDep-KS0686506865eucas1p2i;
 Tue, 31 Dec 2019 10:23:02 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191231102302eusmtrp13f90c349956757c9b790a964abc004d4~lbaDd4kgE3047930479eusmtrp1F;
 Tue, 31 Dec 2019 10:23:02 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-ae-5e0b218668f0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D9.B4.07950.6812B0E5; Tue, 31
 Dec 2019 10:23:02 +0000 (GMT)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20191231102301eusmtip14455cbb4a8108dcc7e987927d6e23d1b~lbaCsyqQU2440824408eusmtip1u;
 Tue, 31 Dec 2019 10:23:01 +0000 (GMT)
Message-ID: <29ed54c7700e35fb95fff4f4f5580eba24ffbb35.camel@samsung.com>
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 31 Dec 2019 11:23:00 +0100
In-Reply-To: <20191231100234.GA7024@pi3>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj227nsbG12nIovJoaL7hcrRU/YnYhT/elHEZRZKw8qbUt21NI/
 zS6iLkVKcK1Cky5rUuqqYXYxZWkZTs02C5WhXUTLpGZphtWOx6h/z/c87/M87wsfhanaiHAq
 TZ/BGfQarZqU447mH67leVGzklZ2lc1has3VBNM9Nkgw5U4Xwbz6NkoyZY/sJHPOW4Iz7e01
 Usba94Vg7G89BNNVf4lkfEVOxJjbH0uYW84+KdOTayUZ8/khcuNs1m4rINlez0OS9ZpaJOyd
 qyfY2s91Erb4rg2xPnvkTule+dpkTpuWxRmi1x+Up054LuDpX1Yfn3zuwozIvbAQySigY6Hp
 yjgqRHJKRVsRuM9U4uJjDEHpswqp+PAhMJc/RX8to9UDElG4gaDV2YILgor+gGDkSbyAlTQL
 vtMFUgEH04lgmfBOY5LeAG093yUCDqEXQ/fUOCEEYXQpBh2mjukhnJ4PD1+PTYfK6EUw5SiS
 iM3LYKS12M9T/oIgmKoLFmiMngun7l3EhBygR6TQ2FojFee3wKipYcYbDMMtd2f4CHhx/iwu
 Yh7e3/cSotmIwH7diYlCAvS6JkmhDPNvWl0fLdKb4N64SSLQQAfC65EgcYdAOOcow0RaCfl5
 KhGqof5CoGgEOFnlmclmofNqAVGCoiz/brH8d4vlX2sFwmwojMvkdSkcv0rPHVvBa3R8pj5l
 xeGjOjvyf7IXv1q+1qFvLw81IZpCaoUyP0CepCI0WXy2rgkBhalDlLGJsiSVMlmTncMZjh4w
 ZGo5vgnNoXB1mDKmcmi/ik7RZHBHOC6dM/xVJZQs3IjKt7kduxTZebsXhMUE9/uaT51+EHCt
 8KYiZ2ln6M22rWTEybTLcZYq2mr2zt+8/tPvoIyDF432n+pQIqJUd7iApw6t666NXyPr6c9K
 2D6vKG6AlHl2JOSU7vm4Lmhf6q43tbbBlMiinMTNivyhs7c7u14qht3vOhoMuS7t82FjdqMa
 51M1q5ZgBl7zB3LkodVgAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKIsWRmVeSWpSXmKPExsVy+t/xu7ptitxxBn8vMFtsnLGe1eL6l+es
 FvOPnGO1uPL1PZvF9L2b2Cwm3Z/AYnH+/AZ2ixV3P7JabHp8jdXi8q45bBafe48wWsw4v4/J
 Yu2Ru+wWtxtXsFnMmPySzYHfY9OqTjaPO9f2sHnc7z7O5LF5Sb3Hxnc7mDz6tqxi9Pi8SS6A
 PUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEv48e1
 mSwFH40qfp08x9zAeFW9i5GTQ0LAROL9+kdMXYxcHEICSxkl1n09yAaRkJD4uP4GK4QtLPHn
 WhcbRNETRon/n7cygyR4BTwkPrd0soPYwgIxErN+3Aez2QTsJc7e/sYEYosIaEpc//sdbBCz
 wFRmid2zAkBsFgFViT03vrCA2JwCGhJ/t/VCXTGdWeJEyxl2iAZNidbtv9khrtCReHuqD6iB
 A2ixoMTfHcIQJfISzVtnM09gFJyFpGMWQtUsJFULGJlXMYqklhbnpucWG+kVJ+YWl+al6yXn
 525iBEbptmM/t+xg7HoXfIhRgINRiYe3g4ErTog1say4MvcQowQHs5IIr0kMZ5wQb0piZVVq
 UX58UWlOavEhRlOgfyYyS4km5wMTSF5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTU
 gtQimD4mDk6pBsZrH9kuT3djStThnvwylFtwwoW/UoLq7xRVL/L2qddWqvxq3t/x4/Els6Ia
 1bm2u16sdY9V1NFe/9l04qF03wWXRFqvqv/aPXftuZVJ+67d+Vktoh2R+iWM86tb2dY9HTIf
 EnjmcsktKRZ+xT/bxsLsueKk2tLEs+4Pfb6JCny+YWsYH7gsr1iJpTgj0VCLuag4EQDXG5sf
 6AIAAA==
X-CMS-MailID: 20191231102302eucas1p2c93ec388a3a90051d519d7e169ff5776
X-Msg-Generator: CA
X-RootMTR: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com> <20191230154405.GC4918@pi3>
 <2922135223b01126277ef92a53e6b294bc17bb5c.camel@samsung.com>
 <20191231092254.GA6939@pi3>
 <99427c18b1fcca3bc21e69609500abdbbef59167.camel@samsung.com>
 <20191231100234.GA7024@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_022310_247661_022AC6DD 
X-CRM114-Status: GOOD (  40.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEyLTMxIGF0IDExOjAyICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIFR1ZSwgRGVjIDMxLCAyMDE5IGF0IDEwOjQxOjQ3QU0gKzAxMDAsIEFydHVyIMWa
d2lnb8WEIHdyb3RlOgo+ID4gT24gVHVlLCAyMDE5LTEyLTMxIGF0IDEwOjIyICswMTAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4gPiBPbiBUdWUsIERlYyAzMSwgMjAxOSBhdCAwODox
ODowMUFNICswMTAwLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiA+ID4gPiBIaSwKPiA+ID4gPiAK
PiA+ID4gPiBPbiBNb24sIDIwMTktMTItMzAgYXQgMTY6NDQgKzAxMDAsIEtyenlzenRvZiBLb3ps
b3dza2kgd3JvdGU6Cj4gPiA+ID4gPiBPbiBGcmksIERlYyAyMCwgMjAxOSBhdCAxMjo1Njo1MFBN
ICswMTAwLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiA+ID4gPiA+ID4gVGhpcyBwYXRjaCBhZGRz
IHRoZSBmb2xsb3dpbmcgcHJvcGVydGllcyB0byB0aGUgRXh5bm9zNDQxMiBEVDoKPiA+ID4gPiA+
ID4gICAtIGV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGU6IHRvIGRlY2xhcmUgY29ubmVj
dGlvbnMgYmV0d2Vlbgo+ID4gPiA+ID4gPiAgICAgbm9kZXMgaW4gb3JkZXIgdG8gZ3VhcmFudGVl
IFBNIFFvUyByZXF1aXJlbWVudHMgYmV0d2VlbiBub2RlczsKPiA+ID4gPiA+ID4gICAtICNpbnRl
cmNvbm5lY3QtY2VsbHM6IHJlcXVpcmVkIGJ5IHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrLgo+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gTm90ZSB0aGF0ICNpbnRlcmNvbm5lY3QtY2VsbHMgaXMg
YWx3YXlzIHplcm8gYW5kIG5vZGUgSURzIGFyZSBub3QKPiA+ID4gPiA+ID4gaGFyZGNvZGVkIGFu
eXdoZXJlLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3
aWdvxYQgPGEuc3dpZ29uQHNhbXN1bmcuY29tPgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4g
IGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpIHwgNSArKysr
Kwo+ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBUaGUgb3JkZXIgb2YgcGF0Y2hlcyBpcyBjb25mdXNpbmcuIFBhdGNoZXMgNCBh
bmQgNiBhcmUgc3BsaXQgLSBkbyB0aGUKPiA+ID4gPiA+IGRlcGVuZCBvbiA1PyBJIGRvdWJ0IGJ1
dC4uLgo+ID4gPiA+IAo+ID4gPiA+IExldCBtZSBlbGFib3JhdGU6Cj4gPiA+ID4gCj4gPiA+ID4g
VGhlIG9yZGVyIG9mIHRoZSBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGlzIHN1Y2ggdGhhdCBldmVy
eSBzdWJzZXF1ZW50Cj4gPiA+ID4gcGF0Y2ggYWRkcyBzb21lIGZ1bmN0aW9uYWxpdHkgKGFuZCwg
b2YgY291cnNlLCBhcHBseWluZyBwYXRjaGVzIG9uZS1ieS1vbmUKPiA+ID4gPiB5aWVsZHMgYSB3
b3JraW5nIGtlcm5lbCBhdCBldmVyeSBzdGVwKS4gU3BlY2lmaWNhbGx5IGZvciBwYXRjaGVzIDA0
LS0wNzoKPiA+ID4gPiAKPiA+ID4gPiAgLS0gcGF0Y2ggMDQgYWRkcyBpbnRlcmNvbm5lY3QgX3By
b3ZpZGVyXyBwcm9wZXJ0aWVzIGZvciBFeHlub3M0NDEyOwo+ID4gPiA+ICAtLSBwYXRjaCAwNSBp
bXBsZW1lbnRzIGludGVyY29ubmVjdCBwcm92aWRlciBsb2dpYyAoZGVwZW5kcyBvbiBwYXRjaCAw
NCk7Cj4gPiA+ID4gIC0tIHBhdGNoIDA2IGFkZHMgaW50ZXJjb25uZWN0IF9jb25zdW1lcl8gcHJv
cGVydGllcyBmb3IgRXh5bm9zNDQxMiBtaXhlcjsKPiA+ID4gPiAgLS0gcGF0Y2ggMDcgaW1wbGVt
ZW50cyBpbnRlcmNvbm5lY3QgY29uc3VtZXIgbG9naWMgKGRlcGVuZHMgb24gcGF0Y2hlcwo+ID4g
PiA+ICAgICAwNSAmIDA2KTsKPiA+ID4gPiAKPiA+ID4gPiBNeSByZWFzb25pbmcgaXMgdGhhdCB0
aGlzIG9yZGVyIGFsbG93cyB0byBlLmcuLCBtZXJnZSB0aGUgaW50ZXJjb25uZWN0Cj4gPiA+ID4g
cHJvdmlkZXIgZm9yIGV4eW5vcy1idXMgYW5kIGxlYXZlIHRoZSBjb25zdW1lcnMgZm9yIGxhdGVy
IChub3QgbGltaXRlZCB0bwo+ID4gPiA+IHRoZSBtaXhlcikuIEkgaG9wZSB0aGlzIG1ha2VzIHNl
bnNlLgo+ID4gPiAKPiA+ID4gSXQgaXMgd3JvbmcuIFRoZSBkcml2ZXIgc2hvdWxkIG5vdCBkZXBl
bmQgb24gRFRTIGNoYW5nZXMgYmVjYXVzZToKPiA+ID4gMS4gRFRTIGFsd2F5cyBnbyB0aHJvdWdo
IHNlcGFyYXRlIGJyYW5jaCBhbmQgdHJlZSwgc28gbGFzdCBwYXRjaAo+ID4gPiAgICB3aWxsIGhh
dmUgdG8gd2FpdCB1cCB0byAzIGN5Y2xlcyAoISEhKSwKPiA+ID4gMi4gWW91IGJyZWFrIGJhY2t3
YXJkIGNvbXBhdGliaWxpdHkuCj4gPiAKPiA+IEl0IGlzIHVwIHRvIHRoZSBkZWZpbml0aW9uIG9m
ICJkZXBlbmRzIi4gVGhlIGRyaXZlciBpcyBfbm90XyBicm9rZW4gd2l0aG91dAo+ID4gdGhlIERU
UyBwYXRjaGVzLCBidXQgdGhlIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IHdpbGwgbm90IGJl
IGF2YWlsYWJsZS4KPiA+IAo+ID4gVGhlIG9ubHkgcmVxdWlyZW1lbnQgaXMgdGhhdCBpZiB3ZSB3
YW50IHRvIGhhdmUgYSB3b3JraW5nIGludGVyY29ubmVjdAo+ID4gY29uc3VtZXIsIHRoZXJlIG5l
ZWRzIHRvIGJlIGEgd29ya2luZyBpbnRlcmNvbm5ldCBwcm92aWRlciAoYW5kIEkgdXNlZAo+ID4g
dGhlIHdvcmQgImRlcGVuZHMiIHRvIHNwZWNpZnkgd2hhdCBuZWVkcyB3aGF0IGluIG9yZGVyIHRv
IHdvcmsgYXMgaW50ZW5kZWQpLgo+ID4gCj4gCj4gVGhlIG9yZGVyIG9mIHBhdGNoZXMgc2hvdWxk
IHJlZmxlY3QgZmlyc3Qgb2YgYWxsIHJlYWwgZGVwZW5kZW5jeS4KPiBXaGV0aGVyIGl0IGNvbXBp
bGVzLCB3b3JrcyBhdCBhbGwgYW5kIGRvZXMgbm90IGJyZWFrIGFueXRoaW5nLiAgTG9naWNhbAo+
IGRlcGVuZGVuY3kgb2YgIndoZW4gdGhlIGZlYXR1cmUgd2lsbCBzdGFydCB3b3JraW5nIiBpcwo+
IGlycmVsZXZhbnQgdG8gRFRTIGJlY2F1c2UgRFRTIGdvZXMgaW4gc2VwYXJhdGUgd2F5IGFuZCBk
cml2ZXIgaXMKPiBpbmRlcGVuZGVudCBvZiBpdC4KClRoZSBvcmRlciBvZiBwYXRjaGVzIGRvZXMg
aW5kZWVkIHJlZmxlY3QgcmVhbCBkZXBlbmRlbmN5LiBJIGNhbiBhbHNvIHJlb3JkZXIKdGhlbSAo
cHJlc2VydmluZyB0aGUgZGVwZW5kZW5jaWVzKSBzbyB0aGF0IERUUyBwYXRjaGVzIGdvIGZpcnN0
IGluIHRoZSBzZXJpZXMKaWYgdGhpcyBpcyB0aGUgbW9yZSBwcmVmZXJyZWQgd2F5LgoKPiA+IEkg
c3RpbGwgdGhpbmsgdGhlIG9yZGVyIG9mIHRoZXNlIHBhdGNoZXMgaXMgdGhlIG1vc3QgbG9naWNh
bCBvbmUgZm9yIHNvbWVvbmUKPiA+IHJlYWRpbmcgdGhpcyBSRkMgYXMgYSB3aG9sZS4KPiAKPiBJ
IGFtIHNvcnJ5IGJ1dCBpdCBicmluZ3Mgb25seSBjb25mdXNpb24uIERUUyBpcyBvcnRob2dvbmFs
IG9mIHRoZQo+IGRyaXZlciBjb2RlLiBZb3UgY291bGQgZXZlbiBwb3N0IHRoZSBwYXRjaHNldCB3
aXRob3V0IERUUyAoYWx0aG91Z2ggdGhlbgo+IGl0IHdvdWxkIHJhaXNlIHF1ZXN0aW9ucyB3aGVy
ZSBpcyB0aGUgdXNlciBvZiBpdCwgYnV0IHN0aWxsLCB5b3UKPiBjb3VsZCkuCj4gCj4gRnVydGhl
ciwgRFRTIGRlc2NyaWJlcyBhbHNvIGhhcmR3YXJlIHNvIHlvdSBjb3VsZCBzZW5kIGNlcnRhaW4g
RFRTCj4gcGF0Y2hlcyB3aXRob3V0IGRyaXZlciBpbXBsZW1lbnRhdGlvbiB0byBkZXNjcmliZSB0
aGUgaGFyZHdhcmUuCj4gCj4gRHJpdmVyIGNvZGUgYW5kIERUUyBhcmUga2luZCBvZiBkaWZmZXJl
bnQgd29ybGRzIHNvIG1peGluZyB0aGVtIHVwIGZvcgo+IGxvZ2ljYWwgcmV2aWV3IGRvZXMgbm90
IHJlYWxseSBtYWtlIGFueSBzZW5zZS4KPiAKPiBOb3QgbWVudGlvbmluZyBpdCBpcyBkaWZmZXJl
bnQgdGhhbiBtb3N0IG9mIG90aGVyIHBhdGNoZXMgb24gbWFpbGluZwo+IGxpc3RzLgo+IAo+IEJU
VywgaXQgaXMgdGhlIHNhbWUgYXMgYmluZGluZ3Mgd2hpY2ggc2hvdWxkIChhbG1vc3QpIGFsd2F5
cyBnbyBmaXJzdCBhcwo+IHNlcGFyYXRlIHBhdGNoZXMuCgpUaGFua3MgZm9yIGVsYWJvcmF0aW5n
IG9uIHRoaXMsIEkgYXBwcmVjaWF0ZSBpdC4KUmVnYXJkaW5nIHlvdXIgb3JpZ2luYWwgY29uY2Vy
biwgcGF0Y2hlcyAwNCAmIDA2IGFyZSBzZXBhcmF0ZSBmb3Igc2V2ZXJhbApyZWFzb25zLCBvbmUg
b2Ygd2hpY2ggaXMgdGhhdCB0aGV5IGFyZSByZWxhdGVkIHRvIHR3byBkaWZmZXJlbnQgZHJpdmVy
cwooZXh5bm9zLWJ1cyB2cy4gZXh5bm9zLW1peGVyKS4KCj4gPiAKPiA+ID4gSW4gY2VydGFpbiBj
YXNlcyBkZXBlbmRlbmN5IG9uIERUUyBjaGFuZ2VzIGlzIG9rOgo+ID4gPiAxLiBDbGVhbmluZyB1
cCBkZXByZWNhdGVkIHByb3BlcnRpZXMsCj4gPiA+IDIuIElnbm9yaW5nIHRoZSBiYWNrd2FyZCBj
b21wYXRpYmlsaXR5IGZvciBlLmcuIG5ldyBwbGF0Zm9ybXMuCj4gPiA+IAo+ID4gPiBOb25lIG9m
IHRoZXNlIGFyZSBhcHBsaWNhYmxlIGhlcmUuCj4gPiA+IAo+ID4gPiBZb3UgbmVlZCB0byByZXdv
cmsgaXQsIHB1dCBEVFMgY2hhbmdlcyBhdCB0aGUgZW5kLiBUaGlzIGNsZWFybHkgc2hvd3MKPiA+
ID4gdGhhdCB0aGVyZSBpcyBubyB3cm9uZyBkZXBlbmRlbmN5Lgo+ID4gPiAKPiA+ID4gPiAKPiA+
ID4gPiA+IEFkanVzdCB0aGUgdGl0bGUgdG8gbWF0Y2ggdGhlIGNvbnRlbnRzIC0geW91IGFyZSBu
b3QgYWRkaW5nIGJpbmRpbmdzIGJ1dAo+ID4gPiA+ID4gcHJvcGVydGllcyB0byBidXMgbm9kZXMu
IEFsc28gdGhlIHByZWZpeCBpcyBBUk06IChsb29rIGF0IHJlY2VudAo+ID4gPiA+ID4gY29tbWl0
cykuCj4gPiA+ID4gCj4gPiA+ID4gT0suCj4gPiA+ID4gCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9u
LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+
ID4gPiA+ID4gPiBpbmRleCA0Y2UzZDc3YTY3MDQuLmQ5ZDcwZWFjZmNhZiAxMDA2NDQKPiA+ID4g
PiA+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0
c2kKPiA+ID4gPiA+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQt
Y29tbW9uLmR0c2kKPiA+ID4gPiA+ID4gQEAgLTkwLDYgKzkwLDcgQEAKPiA+ID4gPiA+ID4gICZi
dXNfZG1jIHsKPiA+ID4gPiA+ID4gIAlleHlub3MscHBtdS1kZXZpY2UgPSA8JnBwbXVfZG1jMF8z
PiwgPCZwcG11X2RtYzFfMz47Cj4gPiA+ID4gPiA+ICAJdmRkLXN1cHBseSA9IDwmYnVjazFfcmVn
PjsKPiA+ID4gPiA+ID4gKwkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ID4gPiA+ID4gCj4g
PiA+ID4gPiBUaGlzIGRvZXMgbm90IGxvb2sgbGlrZSBwcm9wZXJ0eSBvZiBPZHJvaWQgYnV0IEV4
eW5vczQ0MTIgb3IgRXh5bm9zNC4KPiA+ID4gPiAKPiA+ID4gPiBTdHJhbmdlbHkgZW5vdWdoLCB0
aGlzIGZpbGUgaXMgd2hlcmUgdGhlICdleHlub3MscGFyZW50LWJ1cycgKGFrYS4gJ2RldmZyZXEn
KQo+ID4gPiA+IHByb3BlcnRpZXMgYXJlIGxvY2F0ZWQgKGFuZCBldmVyeXRoaW5nIGluIHRoaXMg
UkZDIGNvbmNlcm5zIGRldmZyZXEpLgo+ID4gPiAKPiA+ID4gSSBjYW5ub3QgZmluZCBleHlub3Ms
cGFyZW50LWJ1cyBpbiBleHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaS4gQ2FuCj4gPiA+IHlv
dSBlbGFib3JhdGU/Cj4gPiAKPiA+IEN1cnJlbnRseSBhIG5hbWUgY2hhbmdlIGlzIGJlaW5nIG1h
ZGU6ICdkZXZmcmVxJyAtPiAnZXh5bm9zLHBhcmVudC1idXMnCj4gPiBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3BhdGNoLzExMzA0NTQ5Lwo+ID4gKGEgZGVwZW5kZW5jeSBvZiB0aGlzIFJG
QzsgYWxzbyBhdmFpbGFibGUgaW4gZGV2ZnJlcS10ZXN0aW5nIGJyYW5jaCkKPiAKPiBJIHNlZS4g
VGhhdCBwcm9wZXJ0eSBhbHNvIGRvZXMgbm90IGxvb2sgbGlrZSBib2FyZCAoT2Ryb2lkKSBzcGVj
aWZpYyBzbwo+IGl0IHNob3VsZCBiZSBtb3ZlZCB0byBFeHlub3M0NDEyIERUU0kuCgpNYWtlcyBz
ZW5zZSB0byBtZS4gSnVzdCBmcm9tIGxvb2tpbmcgYXQgdGhlIHBhdGNoIEkgcmVmZXJlbmNlZCBh
Ym92ZSwgdGhlcmUgaXMKYSBzaWduaWZpY2FudCBsZXZlbCBvZiBjb2RlIGR1cGxpY2F0aW9uIGJl
dHdlZW4KKiBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLWl0b3Atc2NwLWNvcmUuZHRzaQoq
IGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItbWlkYXMuZHRzaQoqIGFyY2gvYXJtL2Jvb3Qv
ZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCndpdGggcmVsYXRpb24gdG8gdGhlIGRl
dmZyZXEqL2V4eW5vcywqIHByb3BlcnRpZXMuCgotLSAKQXJ0dXIgxZp3aWdvxYQKU2Ftc3VuZyBS
JkQgSW5zdGl0dXRlIFBvbGFuZApTYW1zdW5nIEVsZWN0cm9uaWNzCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
