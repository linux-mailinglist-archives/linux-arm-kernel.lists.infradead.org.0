Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E3CEFCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 06:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0qT/x+6DdCOMOJMKrAvW8f8c5ZwtNc5PHvMWiIb4k4=; b=tk+v4SrOV9zowm
	vo1ld94DdTR4tlqhnxzmWzZ9HBwTGybCoqgbE02n63ixMuSXW3+aKSX7oTajaBbp0SentVSyrzJQg
	YIvxNl2D0rDPOBxHJsJdI+rFfdR4uJfFGwF8GbqV/g9BCL5r32tq6sxS4ZFPN4hFEkB42ID2gKkoD
	wMFjly3wWfnxEVNe9dtbz2bvbqOKimfet2m8xZU3sNJnCWwpDnGr8Mx100j91yxjYjo1Sy6cU0v31
	WonYaXzi935KWeRICSanB6WUGflP4lZ9NLMSkpk67E49Y2/GOm+atVVoInG2bOznV2AGJnKwZogYL
	Dey2xfQJRmZHU85z30yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKnf-0002ao-KT; Tue, 30 Apr 2019 04:55:27 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKnX-0002Zh-Bx
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 04:55:21 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190430045512epoutp0324b4ad104fcee917699d985d6870daf8~aJ44qQb_U2974329743epoutp03N
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 04:55:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190430045512epoutp0324b4ad104fcee917699d985d6870daf8~aJ44qQb_U2974329743epoutp03N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556600112;
 bh=Kr2EJtQBEjvLCyCDiIHvPHj47DooKA1ezT8asW04amk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=r7g3pzNC27OEfvgALYh48GdC2omwF2HviuTs+2OXdgbDwzcBEU6JhX5GCs4K3Tq+I
 SP5hgHL5MEsNJlzQwQPIbv4YYIoh23pkvmR5m/vTFUJBWLVGN9ii2PR+xm0TmmxEag
 YCbaihHFL5QD6U4T1KAc2lf9vPTi8Ww16n/4VR0s=
Received: from epsmges1p3.samsung.com (unknown [182.195.40.154]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190430045509epcas1p2302c64dfbd4a8ab28246de25e11fd1bd~aJ41LZ7E50715107151epcas1p2r;
 Tue, 30 Apr 2019 04:55:09 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 D9.BD.04143.C25D7CC5; Tue, 30 Apr 2019 13:55:08 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190430045508epcas1p2bd7798f5d17968714afc0fb029932f9b~aJ40uIxav0935909359epcas1p2M;
 Tue, 30 Apr 2019 04:55:08 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190430045508epsmtrp1d456c57b94621fed9fb12ad1823bd74a~aJ40sgk9L1373413734epsmtrp1i;
 Tue, 30 Apr 2019 04:55:08 +0000 (GMT)
X-AuditID: b6c32a37-f31ff7000000102f-be-5cc7d52c12a2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5C.5E.03662.C25D7CC5; Tue, 30 Apr 2019 13:55:08 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190430045508epsmtip1938639aed89129727ab18664d4554cef~aJ40ZzIa52651326513epsmtip1D;
 Tue, 30 Apr 2019 04:55:08 +0000 (GMT)
Subject: Re: [PATCH v3 1/4] include: dt-bindings: add Performance Monitoring
 Unit for Exynos
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <a1ff3566-6117-b670-a2f3-b60a2bbec14a@samsung.com>
Date: Tue, 30 Apr 2019 13:56:23 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1555681688-19643-2-git-send-email-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNJsWRmVeSWpSXmKPExsWy7bCmvq7O1eMxBp97LC02zljPajH/yDlW
 i/7Hr5ktzp/fwG5xtukNu8WtBhmLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl91i6fWLTBa3
 G1ewWbTuPcJucfhNO6vFtxOPGB0EPNbMW8PosXPWXXaPTas62Tw2L6n3OPhuD5NH35ZVjB6f
 N8kFsEdl22SkJqakFimk5iXnp2TmpdsqeQfHO8ebmhkY6hpaWpgrKeQl5qbaKrn4BOi6ZeYA
 3a6kUJaYUwoUCkgsLlbSt7Mpyi8tSVXIyC8usVVKLUjJKbAs0CtOzC0uzUvXS87PtTI0MDAy
 BSpMyM44tDixYJJwxeEVf1gaGE/zdzFyckgImEis27OIrYuRi0NIYAejxI2GHYwQzidGiQPr
 lkBlvjFK3NvYwQ7T0jphATNEYi+jxI+GS1At7xklJh/bCFYlLBAnsW7LTHaQhIjAWUaJB03b
 wGYxC3xmlDj54BorSBWbgJbE/hc32EBsfgFFias/HjOC2LwCdhKLdz0Cm8QioCrReOUgmC0q
 ECFx/9gGVogaQYmTM5+wgNicAt4SLx+/BpvDLCAucevJfCYIW16ieetsZoi7D7FLTJiYBGG7
 SCzfdpsJwhaWeHV8C9RvUhIv+9ug7GqJlSePgB0tIdDBKLFl/wVWiISxxP6lk4GaOYAWaEqs
 36UPsYtP4t3XHlaQsIQAr0RHmxBEtbLE5Qd3oVZJSixu72SDsD0k7r6ayjiBUXEWkm9mIflg
 FpIPZiEsW8DIsopRLLWgODc9tdiwwBg5ujcxghO2lvkOxg3nfA4xCnAwKvHwerw7FiPEmlhW
 XJl7iFGCg1lJhNfj+NEYId6UxMqq1KL8+KLSnNTiQ4ymwMCeyCwlmpwPzCZ5JfGGpkbGxsYW
 JoZmpoaGSuK86x2cY4QE0hNLUrNTUwtSi2D6mDg4pRoYSyQmdIiaM25WF9ziV5IkPeF8glxo
 5gPDe3mMVyenTHwyw+Uj33qzKcxPPtvU3XjyaNbPPXJRu+ouMMtoyYYUT49fPeW2EoO5TBrD
 bc9ZOqvu5CeyK705LXPAaMbDhuuavje7f31T0d9kYRnlwG2npdsRqrhAWmZ1Zql397+v+TPl
 medw9KYrsRRnJBpqMRcVJwIA/3wlNe4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRmVeSWpSXmKPExsWy7bCSnK7O1eMxBrNvSltsnLGe1WL+kXOs
 Fv2PXzNbnD+/gd3ibNMbdotbDTIWmx5fY7W4vGsOm8Xn3iOMFjPO72OyWHvkLrvF0usXmSxu
 N65gs2jde4Td4vCbdlaLbyceMToIeKyZt4bRY+esu+wem1Z1snlsXlLvcfDdHiaPvi2rGD0+
 b5ILYI/isklJzcksSy3St0vgyji0OLFgknDF4RV/WBoYT/N3MXJySAiYSLROWMDcxcjFISSw
 m1Hi9o3FTBAJSYlpF48CJTiAbGGJw4eLIWreMko8Ov2cGaRGWCBOYt2WmewgCRGBs4wSiyYt
 AHOYBT4zSkxfcxlq7H1GicY7l9hAWtgEtCT2v7gBZvMLKEpc/fGYEcTmFbCTWLzrETuIzSKg
 KtF45SCYLSoQIXHm/QoWiBpBiZMzn4DZnALeEi8fvwabwyygLvFn3iVmCFtc4taT+UwQtrxE
 89bZzBMYhWchaZ+FpGUWkpZZSFoWMLKsYpRMLSjOTc8tNiwwykst1ytOzC0uzUvXS87P3cQI
 jl0trR2MJ07EH2IU4GBU4uH1eHcsRog1say4MvcQowQHs5IIr8fxozFCvCmJlVWpRfnxRaU5
 qcWHGKU5WJTEeeXzj0UKCaQnlqRmp6YWpBbBZJk4OKUaGF0uz85/e0H9zg3djE96YhtFX+nr
 VzMy7ll0fkXARt6F0R9Ntm81n7jzHNtM3wW3OKqFD/ouCjl+4mfv5b7vU9l9GspmWd1xzp82
 t+Zf7p2JvrY7t7+U+Slwm/WCQdzKtbN8nD5zvOdQ+Kq/oKRO5qHVjYnFdq6HZO5sEN7QdHnR
 ZU3DN8EOraeVWIozEg21mIuKEwHrghTB2QIAAA==
X-CMS-MailID: 20190430045508epcas1p2bd7798f5d17968714afc0fb029932f9b
X-Msg-Generator: CA
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190419134820eucas1p154e839769af0e1b8bae17ce3efa0ba93
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134820eucas1p154e839769af0e1b8bae17ce3efa0ba93@eucas1p1.samsung.com>
 <1555681688-19643-2-git-send-email-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_215519_572892_13C5A68D 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

SGksCgpJIGFncmVlIG9mIHRoaXMgcGF0Y2guIEJ1dCwgSSBhZGQgdGhlIG1pbm9yIGNvbW1lbnRz
LgoKSWYgeW91IGVkaXQgdGhlbSBhY2NvcmRpbmcgdG8gbXkgY29tbWVudCwgZmVlbCBmcmVlIHRv
IGFkZCBteSBmb2xsb3dpbmcgdGFnOgpBY2tlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lA
c2Ftc3VuZy5jb20+CgpPbiAxOS4gNC4gMTkuIOyYpO2bhCAxMDo0OCwgTHVrYXN6IEx1YmEgd3Jv
dGU6Cj4gVGhpcyBwYXRjaCBhZGQgc3VwcG9ydCBvZiBhIG5ldyBmZWF0dXJlIHdoaWNoIGNhbiBi
ZSB1c2VkIGluIERUOgo+IFBlcmZvcm1hbmNlIE1vbml0b3JpbmcgVW5pdCB3aXRoIGRlZmluZWQg
ZXZlbnQgZGF0YSB0eXBlLgo+IEluIHRoaXMgcGF0Y2ggdGhlIGV2ZW50IGRhdGEgdHlwZXMgYXJl
IGRlZmluZWQgZm9yIEV4eW5vcyBQUE1VLgo+IFRoZSBwYXRjaCBhbHNvIHVwZGF0ZXMgdGhlIE1B
SU5UQUlORVJTIGZpbGUgYWNjb3JkaW5nbHkgYW5kCj4gYWRkcyB0aGUgaGVhZGVyIGZpbGUgdG8g
ZGV2ZnJlcSBldmVudCBzdWJzeXN0ZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEx1YmEg
PGwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+IC0tLQo+ICBNQUlOVEFJTkVSUyAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDEgKwo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL3BtdS9leHlu
b3NfcHBtdS5oIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFu
Z2VkLCAyNyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJp
bmRpbmdzL3BtdS9leHlub3NfcHBtdS5oCj4gCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIv
TUFJTlRBSU5FUlMKPiBpbmRleCAzNjcxZmRlLi4xYmE0YjliIDEwMDY0NAo+IC0tLSBhL01BSU5U
QUlORVJTCj4gKysrIGIvTUFJTlRBSU5FUlMKPiBAQCAtNDU2MCw2ICs0NTYwLDcgQEAgVDoJZ2l0
IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tengvZGV2ZnJl
cS5naXQKPiAgUzoJU3VwcG9ydGVkCj4gIEY6CWRyaXZlcnMvZGV2ZnJlcS9ldmVudC8KPiAgRjoJ
ZHJpdmVycy9kZXZmcmVxL2RldmZyZXEtZXZlbnQuYwo+ICtGOglpbmNsdWRlL2R0LWJpbmRpbmdz
L3BtdS9leHlub3NfcHBtdS5oCj4gIEY6CWluY2x1ZGUvbGludXgvZGV2ZnJlcS1ldmVudC5oCj4g
IEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V2ZW50Lwo+ICAK
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9wbXUvZXh5bm9zX3BwbXUuaCBiL2lu
Y2x1ZGUvZHQtYmluZGluZ3MvcG11L2V4eW5vc19wcG11LmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAuLjA4ZmRjZTkKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvaW5jbHVk
ZS9kdC1iaW5kaW5ncy9wbXUvZXh5bm9zX3BwbXUuaAo+IEBAIC0wLDAgKzEsMjYgQEAKPiArLyog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KPiArLyoKPiArICogU2Ftc3VuZyBF
eHlub3MgUFBNVSBldmVudCB0eXBlcyBmb3IgY291bnRpbmcgaW4gcmVncwo+ICsgKgo+ICsgKiBD
b3B5cmlnaHQgKGMpIDIwMTksIFNhbXN1bmcKCk1hYnllLCAiU2Ftc3VuZyBFbGVjdHJvbmljcyIg
aW5zdGVhZCBvZiAnU2Ftc3VuZycuCgo+ICsgKiBBdXRob3I6IEx1a2FzeiBMdWJhIDxsLmx1YmFA
cGFydG5lci5zYW1zdW5nLmNvbT4KPiArICovCj4gKwo+ICsjaWZuZGVmIF9fRFRfQklORElOR1Nf
UE1VX0VYWU5PU19QUE1VX0gKPiArI2RlZmluZSBfX0RUX0JJTkRJTkdTX1BNVV9FWFlOT1NfUFBN
VV9ICj4gKwo+ICsKClJlbW92ZSB1bm5lZWRlZCBibGFuayBsaW5lLgoKPiArI2RlZmluZSBQUE1V
X1JPX0JVU1lfQ1lDTEVfQ05UCQkweDAKPiArI2RlZmluZSBQUE1VX1dPX0JVU1lfQ1lDTEVfQ05U
CQkweDEKPiArI2RlZmluZSBQUE1VX1JXX0JVU1lfQ1lDTEVfQ05UCQkweDIKPiArI2RlZmluZSBQ
UE1VX1JPX1JFUVVFU1RfQ05UCQkweDMKPiArI2RlZmluZSBQUE1VX1dPX1JFUVVFU1RfQ05UCQkw
eDQKPiArI2RlZmluZSBQUE1VX1JPX0RBVEFfQ05UCQkweDUKPiArI2RlZmluZSBQUE1VX1dPX0RB
VEFfQ05UCQkweDYKPiArI2RlZmluZSBQUE1VX1JPX0xBVEVOQ1kJCQkweDEyCj4gKyNkZWZpbmUg
UFBNVV9XT19MQVRFTkNZCQkJMHgxNgo+ICsjZGVmaW5lIFBQTVVfVjJfUk9fREFUQV9DTlQJCTB4
NAo+ICsjZGVmaW5lIFBQTVVfVjJfV09fREFUQV9DTlQJCTB4NQo+ICsjZGVmaW5lIFBQTVVfVjJf
RVZUM19SV19EQVRBX0NOVAkweDIyCj4gKwo+ICsjZW5kaWYKPiAKCgotLSAKQmVzdCBSZWdhcmRz
LApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
