Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596DB1161D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 11:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsKzcFGN+YZ3XKmdjbcIPMgIEwRJqebi/NR0J+XJ2sc=; b=JdPivZfbjFXxR9
	y12r8WT0m3RB8oPK/NMLPL+GQI+ATIth1Mrtk4vanBBtu/y3d81r1pOQqp8m1x2v7YXMBpW9HpYsZ
	9hmIsXae6dHXQA2rnGVBi/7lmJSz9h2IoCSnBSWfTedaI8iXJ9/WuzMyhfOWUISlE2ICNXVh678Xa
	+78H0Q+M7R+ByBn7+r4qx33K8xAJSyK1j1N0SohqgHrIy4OGswZto1T1Q32rs0Bwr5H/IiIPbu5V0
	nd6P7fgo5cEwdgMtIlLGOTL32wLbP54sK1A3UaEBLJkIE2flG9UqnVuI6CIWEDPXZ6htJbcnUIeOn
	CgNioI5Hha7O02CeAirw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7hD-00005o-5Q; Thu, 02 May 2019 09:08:03 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7h5-00005L-IU
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 09:07:57 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190502090747euoutp0200b663c68bffc70d9b60e83d2c03c3da~a0n_7gAPy1714217142euoutp02b
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 May 2019 09:07:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190502090747euoutp0200b663c68bffc70d9b60e83d2c03c3da~a0n_7gAPy1714217142euoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556788067;
 bh=7y6pfwZd2kl1NIeu3yktOUDRjdOM1tIbsD/dhVmUFg4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Un35zlu0clDc23xVDMVXdifRCgA7wlF35FjwmtybuYOBEWOenJJ19faV5C0n1VdLI
 MGwn2V29TZ0kN3472bVfIRW237a4QnK20DFqBoIBViZXDGWo8sYcPUTO+GU1b5i6rT
 6ryfHjPFsDPUbs9by5pFcGcwJTJnyK7yqKRQylIU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190502090746eucas1p27d534a5b51bc17d1c6c85dfd981a26fe~a0n_N938v0868708687eucas1p2z;
 Thu,  2 May 2019 09:07:46 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D8.AB.04325.263BACC5; Thu,  2
 May 2019 10:07:46 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190502090745eucas1p1cc1da597aca7dbdf5524e2368a45accc~a0n9bSL741494314943eucas1p1B;
 Thu,  2 May 2019 09:07:45 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190502090745eusmtrp146287be8f56d7b57e00a90a41952b226~a0n9NIs3A2320523205eusmtrp1H;
 Thu,  2 May 2019 09:07:45 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-da-5ccab362ba50
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C5.4F.04146.163BACC5; Thu,  2
 May 2019 10:07:45 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190502090744eusmtip13ce7d7f7dc8e4f82cb2f0b7d0160ce9b~a0n8USKY83225432254eusmtip1T;
 Thu,  2 May 2019 09:07:44 +0000 (GMT)
Subject: Re: [PATCH v3 2/4] drivers: devfreq: events: extend events by type
 of counted data
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <4cd7b7a3-7458-2166-a784-1a94830f5507@partner.samsung.com>
Date: Thu, 2 May 2019 11:07:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <be9dfa71-b6fd-ebe3-e8be-a7ea28765225@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNKsWRmVeSWpSXmKPExsWy7djPc7pJm0/FGMz5wmOxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yWyy9fpHJ
 4nbjCjaL1r1H2C0Ov2lntfh24hGjg4DHmnlrGD12zrrL7rFpVSebx+Yl9R59W1YxenzeJBfA
 FsVlk5Kak1mWWqRvl8CV0Tj7NVPBZMWK9qclDYxzpLoYOTkkBEwkdl/dwtrFyMUhJLCCUeLf
 /i1sEM4XRon7e6dBOZ8ZJe593scO0zJt3iVmiMRyRom9My+xQzhvgVqmzGUCqRIWiJW4NWEa
 2GARgZOMEr2Nd8EcZpBZJx9cA3I4ONgE9CR2rCoEaeAVcJO4d2Q2M4jNIqAisWhHGxuILSoQ
 IXH/2AZWiBpBiZMzn7CA2JwC9hLf1+wAs5kFxCVuPZnPBGHLSzRvnQ12noTAX3aJ7es+sUDc
 7SLR9qObGcIWlnh1fAvUPzISpyf3QNUUSzT0LmSEsGskHvfPhaqxljh8/CLYzcwCmhLrd+lD
 hB0l3q7/wQQSlhDgk7jxVhDiBD6JSdumM0OEeSU62oQgqjUktvRcYIKwxSSWr5nGPoFRaRaS
 x2YheWYWkmdmIexdwMiyilE8tbQ4Nz212DgvtVyvODG3uDQvXS85P3cTIzDJnf53/OsOxn1/
 kg4xCnAwKvHw/ph6MkaINbGsuDL3EKMEB7OSCO+tPUAh3pTEyqrUovz4otKc1OJDjNIcLEri
 vNUMD6KFBNITS1KzU1MLUotgskwcnFINjCfjZ/9cdfl9VprbI+dIMXHP+uC6lA3aT4L4tcW+
 TfWauWTSd88Vn9J/sxz82BP44e9Gxt3vBM1WMv96aTh3AUdM7bxv0gbzvLzmzPzq7sOnl768
 WXRK3AFWt0nijooeDWqTvLLEW3r3G8YeaZRp7/HNNfRf0h9xz7qbWfa/3cVD7yWjeP3nKbEU
 ZyQaajEXFScCAPmPPGhuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsVy+t/xu7qJm0/FGGyaI2qxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yWyy9fpHJ
 4nbjCjaL1r1H2C0Ov2lntfh24hGjg4DHmnlrGD12zrrL7rFpVSebx+Yl9R59W1YxenzeJBfA
 FqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CX0Tj7
 NVPBZMWK9qclDYxzpLoYOTkkBEwkps27xNzFyMUhJLCUUWLa/ouMEAkxiUn7trND2MISf651
 sUEUvWaU+NM6jRUkISwQKzF/8T5GkISIwElGidkT/jKBOMwCnxklpq+5DDW3jVni+8NrQLM4
 ONgE9CR2rCoE6eYVcJO4d2Q2M4jNIqAisWhHGxuILSoQIXHm/QoWiBpBiZMzn4DZnAL2Et/X
 7ACzmQXMJOZtfsgMYYtL3HoynwnClpdo3jqbeQKj0Cwk7bOQtMxC0jILScsCRpZVjCKppcW5
 6bnFhnrFibnFpXnpesn5uZsYgZG97djPzTsYL20MPsQowMGoxMP7Y+rJGCHWxLLiytxDjBIc
 zEoivLf2AIV4UxIrq1KL8uOLSnNSiw8xmgI9N5FZSjQ5H5h08kriDU0NzS0sDc2NzY3NLJTE
 eTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MM70qs1dyV36czWDkqROw5pXlx1OyIrPFGfIyF8c
 UlUf51nyyZ7fXrw9Wq2kffGRvXn3xDMiNwi6fLb9eVhgXu2PiW/NjPQVfwkmrvR9/D3j7LYt
 Ov+W5cYG38j6ERnyOySsxvG/1suQ304/9e7s8v4td65awe96mpnJlCvHKjem1TlJ589qUGIp
 zkg01GIuKk4EADO1N9gCAwAA
X-CMS-MailID: 20190502090745eucas1p1cc1da597aca7dbdf5524e2368a45accc
X-Msg-Generator: CA
X-RootMTR: 20190419134821eucas1p2461a27e28387ff2b87c149f09582d2a0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190419134821eucas1p2461a27e28387ff2b87c149f09582d2a0
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134821eucas1p2461a27e28387ff2b87c149f09582d2a0@eucas1p2.samsung.com>
 <1555681688-19643-3-git-send-email-l.luba@partner.samsung.com>
 <3557d507-0463-89de-4025-fbeaaef78bed@samsung.com>
 <adb6e86a-880e-f9b7-76b2-777a531895d2@partner.samsung.com>
 <be9dfa71-b6fd-ebe3-e8be-a7ea28765225@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_020755_741580_9B4B54DB 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzIvMTkgMzoyNSBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IEhpIEx1a2FzeiwKPiAK
PiBPbiAxOS4gNS4gMS4g7Jik7KCEIDY6MTksIEx1a2FzeiBMdWJhIHdyb3RlOgo+PiBIaSBDaGFu
d29vLAo+Pgo+PiBPbiA0LzMwLzE5IDk6MzQgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPj4+IEhp
IEx1a2FzeiwKPj4+Cj4+PiBPbiAxOS4gNC4gMTkuIOyYpO2bhCAxMDo0OCwgTHVrYXN6IEx1YmEg
d3JvdGU6Cj4+Pj4gVGhpcyBwYXRjaCBhZGRzIHBvc2liaWxpdHkgdG8gY2hvb3NlIHdoYXQgdHlw
ZSBvZiBkYXRhIHNob3VsZCBiZSBjb3VudGVkCj4+Pj4gYnkgdGhlIFBQTVUgY291bnRlci4gTm93
IHRoZSB0eXBlIGNvbWVzIGZyb20gRFQgd2hlcmUgdGhlIGV2ZW50IGhhcyBiZWVuCj4+Pj4gZGVm
aW5lZC4gV2hlbiB0aGVyZSBpcyBubyAnZXZlbnQtZGF0YS10eXBlJyB0aGUgZGVmYXVsdCB2YWx1
ZSBpcyB1c2VkLAo+Pj4+IHdoaWNoIGlzICdyZWFkIGRhdGEgaW4gYnl0ZXMnLgo+Pj4+IEl0IGlz
IG5lZWRlZCB3aGVuIHlvdSB3YW50IHRvIGtub3cgbm90IG9ubHkgcmVhZCt3cml0ZSBkYXRhIGJ5
dGVzIGJ1dAo+Pj4+IGkuZS4gb25seSB3cml0ZSBkYXRhIGluIGJ5dGUsIG9yIG51bWJlciBvZiBy
ZWFkIHJlcXVlc3RzLCBldGMuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogTHViYSA8
bC5sdWJhQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9kZXZm
cmVxL2V2ZW50L2V4eW5vcy1wcG11LmMgfCA2MSArKysrKysrKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tCj4+Pj4gICAgaW5jbHVkZS9saW51eC9kZXZmcmVxLWV2ZW50LmggICAgICAgfCAg
NiArKysrCj4+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspLCAxOSBkZWxl
dGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXZlbnQvZXh5
bm9zLXBwbXUuYyBiL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9leHlub3MtcHBtdS5jCj4+Pj4gaW5k
ZXggYzYxZGUwYi4uMDczYmYyYyAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXZl
bnQvZXh5bm9zLXBwbXUuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9leHlub3Mt
cHBtdS5jCj4+Pj4gQEAgLTE1NCw5ICsxNTQsOSBAQCBzdGF0aWMgaW50IGV4eW5vc19wcG11X3Nl
dF9ldmVudChzdHJ1Y3QgZGV2ZnJlcV9ldmVudF9kZXYgKmVkZXYpCj4+Pj4gICAgCWlmIChyZXQg
PCAwKQo+Pj4+ICAgIAkJcmV0dXJuIHJldDsKPj4+PiAgICAKPj4+PiAtCS8qIFNldCB0aGUgZXZl
bnQgb2YgUmVhZC9Xcml0ZSBkYXRhIGNvdW50ICAqLwo+Pj4+ICsJLyogU2V0IHRoZSBldmVudCBv
ZiBwcm9wZXIgZGF0YSB0eXBlIG1vbml0b3JpbmcgKi8KPj4+PiAgICAJcmV0ID0gcmVnbWFwX3dy
aXRlKGluZm8tPnJlZ21hcCwgUFBNVV9CRVZUeFNFTChpZCksCj4+Pj4gLQkJCQlQUE1VX1JPX0RB
VEFfQ05UIHwgUFBNVV9XT19EQVRBX0NOVCk7Cj4+Pj4gKwkJCSAgIGVkZXYtPmRlc2MtPmRhdGFf
dHlwZSk7Cj4+Pj4gICAgCWlmIChyZXQgPCAwKQo+Pj4+ICAgIAkJcmV0dXJuIHJldDsKPj4+PiAg
ICAKPj4+PiBAQCAtMzY4LDIzICszNjgsMTEgQEAgc3RhdGljIGludCBleHlub3NfcHBtdV92Ml9z
ZXRfZXZlbnQoc3RydWN0IGRldmZyZXFfZXZlbnRfZGV2ICplZGV2KQo+Pj4+ICAgIAlpZiAocmV0
IDwgMCkKPj4+PiAgICAJCXJldHVybiByZXQ7Cj4+Pj4gICAgCj4+Pj4gLQkvKiBTZXQgdGhlIGV2
ZW50IG9mIFJlYWQvV3JpdGUgZGF0YSBjb3VudCAgKi8KPj4+PiAtCXN3aXRjaCAoaWQpIHsKPj4+
PiAtCWNhc2UgUFBNVV9QTU5DTlQwOgo+Pj4+IC0JY2FzZSBQUE1VX1BNTkNOVDE6Cj4+Pj4gLQlj
YXNlIFBQTVVfUE1OQ05UMjoKPj4+PiAtCQlyZXQgPSByZWdtYXBfd3JpdGUoaW5mby0+cmVnbWFw
LCBQUE1VX1YyX0NIX0VWeF9UWVBFKGlkKSwKPj4+PiAtCQkJCVBQTVVfVjJfUk9fREFUQV9DTlQg
fCBQUE1VX1YyX1dPX0RBVEFfQ05UKTsKPj4+PiAtCQlpZiAocmV0IDwgMCkKPj4+PiAtCQkJcmV0
dXJuIHJldDsKPj4+PiAtCQlicmVhazsKPj4+PiAtCWNhc2UgUFBNVV9QTU5DTlQzOgo+Pj4+IC0J
CXJldCA9IHJlZ21hcF93cml0ZShpbmZvLT5yZWdtYXAsIFBQTVVfVjJfQ0hfRVZ4X1RZUEUoaWQp
LAo+Pj4+IC0JCQkJUFBNVV9WMl9FVlQzX1JXX0RBVEFfQ05UKTsKPj4+PiAtCQlpZiAocmV0IDwg
MCkKPj4+PiAtCQkJcmV0dXJuIHJldDsKPj4+PiAtCQlicmVhazsKPj4+PiAtCX0KPj4+PiArCS8q
IFNldCB0aGUgZXZlbnQgb2YgcHJvcGVyIGRhdGEgdHlwZSBtb25pdG9yaW5nICovCj4+Pj4gKwly
ZXQgPSByZWdtYXBfd3JpdGUoaW5mby0+cmVnbWFwLCBQUE1VX1YyX0NIX0VWeF9UWVBFKGlkKSwK
Pj4+PiArCQkJICAgZWRldi0+ZGVzYy0+ZGF0YV90eXBlKTsKPj4+PiArCWlmIChyZXQgPCAwKQo+
Pj4+ICsJCXJldHVybiByZXQ7Cj4+Pj4gICAgCj4+Pj4gICAgCS8qIFJlc2V0IGN5Y2xlIGNvdW50
ZXIvcGVyZm9ybWFuY2UgY291bnRlciBhbmQgZW5hYmxlIFBQTVUgKi8KPj4+PiAgICAJcmV0ID0g
cmVnbWFwX3JlYWQoaW5mby0+cmVnbWFwLCBQUE1VX1YyX1BNTkMsICZwbW5jKTsKPj4+PiBAQCAt
NTA4LDYgKzQ5Niw3IEBAIHN0YXRpYyBpbnQgb2ZfZ2V0X2RldmZyZXFfZXZlbnRzKHN0cnVjdCBk
ZXZpY2Vfbm9kZSAqbnAsCj4+Pj4gICAgCXN0cnVjdCBkZXZpY2UgKmRldiA9IGluZm8tPmRldjsK
Pj4+PiAgICAJc3RydWN0IGRldmljZV9ub2RlICpldmVudHNfbnAsICpub2RlOwo+Pj4+ICAgIAlp
bnQgaSwgaiwgY291bnQ7Cj4+Pj4gKwlpbnQgcmV0Owo+Pj4+ICAgIAo+Pj4+ICAgIAlldmVudHNf
bnAgPSBvZl9nZXRfY2hpbGRfYnlfbmFtZShucCwgImV2ZW50cyIpOwo+Pj4+ICAgIAlpZiAoIWV2
ZW50c19ucCkgewo+Pj4+IEBAIC01NDQsNiArNTMzLDQwIEBAIHN0YXRpYyBpbnQgb2ZfZ2V0X2Rl
dmZyZXFfZXZlbnRzKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4+Pj4gICAgCQlkZXNjW2pdLmRy
aXZlcl9kYXRhID0gaW5mbzsKPj4+PiAgICAKPj4+PiAgICAJCW9mX3Byb3BlcnR5X3JlYWRfc3Ry
aW5nKG5vZGUsICJldmVudC1uYW1lIiwgJmRlc2Nbal0ubmFtZSk7Cj4+Pj4gKwkJcmV0ID0gb2Zf
cHJvcGVydHlfcmVhZF91MzIobm9kZSwgImV2ZW50LWRhdGEtdHlwZSIsCj4+Pj4gKwkJCQkJICAg
JmRlc2Nbal0uZGF0YV90eXBlKTsKPj4+PiArCQlpZiAocmV0KSB7Cj4+Pj4gKwkJCS8qIFNldCB0
aGUgZXZlbnQgb2YgcHJvcGVyIGRhdGEgdHlwZSBjb3VudGluZy4KPj4+PiArCQkJICogQ2hlY2sg
aWYgdGhlIGRhdGEgdHlwZSBoYXMgYmVlbiBkZWZpbmVkIGluIERULAo+Pj4+ICsJCQkgKiB1c2Ug
ZGVmYXVsdCBpZiBub3QuCj4+Pj4gKwkJCSAqLwo+Pj4+ICsJCQlpZiAob2ZfZGV2aWNlX2lzX2Nv
bXBhdGlibGUobnAsCj4+Pj4gKwkJCQkJInNhbXN1bmcsZXh5bm9zLXBwbXUtdjIiKSkgewo+Pj4K
Pj4+IEl0IGlzIG5vdCBwcm9wZXIgdG8gY29tcGFyZSB0aGUgY29tcGF0aWJsZSBzdHJpbmcgYWdh
aW4KPj4+IGluIHRoZSBkZXZpY2UgZHJpdmVyLiBJbnN0ZWFkLCB5b3UgY2FuIGRlZmluZSB0aGUg
cHBtdSBkZXZpY2UgdHlwZQo+Pj4gYXMgZm9sbG93aW5nIGFuZCB0aGVuIHVzZSAnc3RydWN0IG9m
X2RldmljZV9pZCcgaW4gb3JkZXIgdG8KPj4+IGlkZW50aWZ5IHRoZSBkZXZpY2UgdHlwZS4KPj4g
SSBoYXZlIGJlZW4gdGhpbmtpbmcgYWJvdXQgbW9kaWZ5aW5nIHRoZSBjb2RlIGluIHNpbWlsYXIg
ZmFzaGlvbiBhcyB5b3UKPj4gZGlkLiBHb29kIHRvIHNlZSBzaW1pbGFyIGFwcHJvYWNoLiBJJ2xs
IHRha2UgeW91ciBjaGFuZ2VzIHdpdGggYSBzbWFsbAo+PiBhZGRpdGlvbmFsIGNvZGUsIHdoaWNo
IHNldHMgdGhlICdpbmZvLT5wcG11X3R5cGUnIGJlZm9yZSB0aGUgZm9yCj4+IGxvb3AsIGFzIGFu
IGFkZGl0aW9uYWwgcGF0Y2guIFdvdWxkIGl0IGJlIE9LIGlmIEkgYWRkIHlvdSBhcyBhbiBhdXRo
b3IKPj4gYW5kIGFkZCBTaWduLW9mZi1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3Vu
Zy5jb20+Pwo+IAo+IElmIHlvdSBhZ3JlZSwganVzdCBhZGQgdGhlIG15IHNpZ25lZC1vZmYtYnkg
b24gc2Vjb25kIGxpbmUuCk9LCgpSZWdhcmRzLApMdWthc3oKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
