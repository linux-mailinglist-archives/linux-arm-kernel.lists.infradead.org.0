Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F24F1CA491
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 08:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUFI8zyJkvJmui+8zvGQSBrV1V2R/cSvh7ESA3KD10Y=; b=CALzDpM1f9ogGV
	TQupI5uTb9Zv3CYcJ3lwoAD9gUQaRHg2PqCQO3ob/bFFylhzOO9ml2TPo5m1NO7oWb8HUR2QT+fY3
	2TZa3hqtqnZlWph2D5rS20lOBbC3H4PtlITZVe6iim1Jelg3UWwNvhSezGO1Egm5ZH7tHtlRZxWvL
	nATmaxiAslx3B7pOC2U62na+moWNGvoh4LohWzWgq5qTDBO5IDgR5zSz53yufTLRODyQLSmkhjvUK
	Re15yvIsMJdx7WZhb8uLd3YWIQVOtuyXCV+zeOka+pLQwq1ZlJA2cP75BdRujl1+d9UUqIpvpe80G
	Rzq9sf8utAGI8WVTkuXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWwtC-00014W-Pq; Fri, 08 May 2020 06:53:42 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwt0-000147-MM
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 06:53:32 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200508065328euoutp01c6e48b3218343420fa606763be5d5508~M_w5_Zbte1038110381euoutp01B;
 Fri,  8 May 2020 06:53:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200508065328euoutp01c6e48b3218343420fa606763be5d5508~M_w5_Zbte1038110381euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588920808;
 bh=Z7m45ytXKpkmvuwQpxVLZ3SHLM3cMj1bzkRRhkTnaDw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=pzSVIV3/v4e6lL50pBf9yQgvuF1lvhHNPmqHibxlL4qnnHlOO6Ca0kv2oDyxarTjN
 XhrxPH3lLvQzFvDmw9NPUFKSSTxL3kVHrAUEIe01K54sMLxFlf2tG3i4RZGhacY21r
 A0MDXGqKfAhgnG0tYNBqygHojYiWJ2fPWkwBsF2I=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200508065327eucas1p2f725cefdb89745bd1d77d3dfb0ffb3d3~M_w5qPND-1155711557eucas1p2A;
 Fri,  8 May 2020 06:53:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 99.CD.60679.7E105BE5; Fri,  8
 May 2020 07:53:27 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200508065327eucas1p21ec9f6144ed975dc1fa11d99b6dc3ffb~M_w5PabC_1674116741eucas1p2U;
 Fri,  8 May 2020 06:53:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200508065327eusmtrp2d1c70c67a2854b27d77b372c8fb55774~M_w5OM_4x2329423294eusmtrp2-;
 Fri,  8 May 2020 06:53:27 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-8e-5eb501e7ebe1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 65.7B.08375.7E105BE5; Fri,  8
 May 2020 07:53:27 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200508065325eusmtip1a647998be423003f3e0d8a7ff6ef6317~M_w3Sghb12877628776eusmtip1m;
 Fri,  8 May 2020 06:53:25 +0000 (GMT)
Subject: Re: [PATCH v4 02/14] arm: add support for folded p4d page tables
To: Mike Rapoport <rppt@linux.ibm.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <98229ab1-fbf8-0a89-c5d6-270c828799e7@samsung.com>
Date: Fri, 8 May 2020 08:53:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200507161155.GE683243@linux.ibm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTZxTee+/t7W2z6m1F+8YRlzULyWaQ6TZ3Ehc/4n68Jv7wj4lZAtrp
 DbAVMK04NPtRy0ewwQ9qEbwt4ujinNQ1Fiofs3M2aFFCh9YYUBBlGEXBYq1Tvoptr278e85z
 nnOe5/w4HK15zS7l8gv3CMZCvUHHKpkLVydDmY+QL+eztiNZ4PS4WZi1XZXD+TqPDNrL+xiY
 sJTTEDldhaCylIKfJ6dkUHF8A9Q7bAhm/edZmDkxQcFYdDk8vx6UQ3/gDIKhPw4k5B0vGfD+
 c1sGkbI2FiYqn8kg3OFk4Z57TgbOGTsNgRo/gulX8YSV85oMWswBFqziQxa8B8MsuDtdcuj0
 tFLQZzez4K+5j6DH+1vCrPceA77uCA1lA1/CkM1Prc8g7pNuRMK3b9BkesqGSPmR1ywJHz5E
 kcZRM0OqezJJuzgoJ66LoxSpGiuTEe/ZgyzxRm1yEnJMMKSrbpohRxv/QuRvr5vekv6t8utd
 giF/r2DMWrtDmec/UMbsHlKXVNsXmlHFQitScJj/Ao8MjyErUnIa/gzCF2tdlFTEEHZ3tjBS
 8QLhhw9m2Xcj52ab36p+RXjq5K238xGE4z02KqlaxG/Ch5qvMEmcxmdgy0sxNUHzj5XYPNNF
 JxssvxJbx62ptSp+LX5ku5TgOY7hP8Z+z/4kvZjPxt2uZiRJ1PjaiZHUTkUiRX3NqxRP8x/i
 Up+DlrAW3xlpoKSkNxU4fnqZhL/BYcccI+FF+EmwRS7hdDzX3pDKhvlShB+EzsmlogrhsKUO
 Sao1eCA0xSbD0fwn2NORJdEbcG2klUrSmF+A+8bVUoYF2HahlpZoFa6s0EjqDCwGf//P9nLv
 Tfoo0onzLhPnXSPOu0b83/cUYs4irVBsKsgVTKsKhR9XmPQFpuLC3BU7iwq8KPEP3fFgrA11
 zHwXQDyHdO+r4Hlzjkam32vaVxBAmKN1aarqkpYcjWqXft9+wVi03VhsEEwB9AHH6LSqzxtH
 szV8rn6P8IMg7BaM77oUp1hqRmsMsV7nTsv299Ii0V8cQnDg3+WGrTvqT4U8yHe86EV/kyHW
 EyU31sWv9wb7fd9vjVXlDa/eXPmT69Li0FddTxh1/mr7U1BvPBYoWTeseBa5nNN5pb1VK0aX
 NI39mT54d7DBUjtpv5XWlLVxS4NjfP0Sf0jLbsvO/GjztrvH7o+4dIwpT7/yU9po0r8Bp3xZ
 7AsEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sb0xTZxTGfe+/XogN1wr6hmA01ZC5hbILVA5GiSQkvvrJxX1Y5sQ1egNE
 2pLe1igfloKtwSpqGzC0FJyyGYUulRYU2ZptnQORsanEypiAizrDoqN2Gv9Q1EI14duTc57f
 c85JDk+rjnCZfKXBLJkMuio1l8oMvR4Yz3mIeso+drozwOv3cTDr6ldAV7Ofhcv2UQaidXYa
 ps8eRVB/kILTL1+xcOhkCbS2uBDMhro4iLujFDyKfQRPrg0o4M/wOQST39cm7H3PGAjci7Aw
 bevlIFr/HwsjfV4OJnxvWPDGG2kIN4UQzDx/nRjlHWSh2xrmwOF5wEHg8AgHvivtCrjiv0TB
 aKOVg1DTXQTDgfOJYdcnGOgZmqbBdkcLk64QtSmb+Np8iIxEbtBk5pULEfvxFxwZOdZAkTNT
 VoY4h3PIZc+4grT/MEWRo49sLAl0HOZIIOZSkN9bogy52jzDkBNnfkLkj4CP3pb1uWaDyWgx
 S6sqjLJ5o3qHCHkasQg0eQVFGjG/cOf6PK06t3jDHqmqcp9kyi3+UlMRqrUx1ZNL9jsb06zo
 UJoDpfBYKMDfzQYpB0rlVcK3CF/03lAkG1l48KSVTeqlOB5xcEnTY4R9fXfpucZSYQtuCP7K
 zOl0IRvXPfPMJ9HCv6n43CnvO8JF4f+n/pl3cYKIHY/nolJ4pVCMH7p+TCTxPCOswSF/zVw5
 Q9iJOyN2lLQswYPu+/NoSmLV1qbn83VaWIfbgn/TSb0SH+xpeaeX47H7p6gTSOVZgHsWIJ4F
 iGcB8jViOlC6ZJH15XpZ1Mg6vWwxlGt2G/UBlHjEi/0vg73oZtf2MBJ4pF6shCfBMhWr2ycf
 0IcR5ml1utK5v7tMpdyjO1AjmYy7TJYqSQ4jbeI2J52ZsduYeGuDeZeoFQuhSCzML8xfB+rl
 ynrh5y9UQrnOLO2VpGrJ9J6j+JRMK2oYt3x29kK2YfRpyYPWS78wv+21hHPNvY1Ct6apN3Ys
 frsgqq8prX0zel2/bKv2yFh/RXUs85vN/g+Ctzu/av5k4NOaOyp3WmST86+J9Mod9mFl3UTx
 8bHB8dPD8ZvnSXvbvVnH6s4hpbEzlJPb0V4Si6zZ0uApvbVIWGsrda/oyVIzcoVO/JA2ybq3
 og0iYZ4DAAA=
X-CMS-MailID: 20200508065327eucas1p21ec9f6144ed975dc1fa11d99b6dc3ffb
X-Msg-Generator: CA
X-RootMTR: 20200507121658eucas1p240cf4a3e0fe5c22dda5ec4f72734149f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200507121658eucas1p240cf4a3e0fe5c22dda5ec4f72734149f
References: <20200414153455.21744-1-rppt@kernel.org>
 <20200414153455.21744-3-rppt@kernel.org>
 <CGME20200507121658eucas1p240cf4a3e0fe5c22dda5ec4f72734149f@eucas1p2.samsung.com>
 <39ba8a04-d6b5-649d-c289-0c8b27cb66c5@samsung.com>
 <20200507161155.GE683243@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_235331_043982_DA836D8E 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fenghua Yu <fenghua.yu@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, Brian Cain <bcain@codeaurora.org>,
 linux-hexagon@vger.kernel.org, linux-sh@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 uclinux-h8-devel@lists.sourceforge.jp, linux-arch@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 =?UTF-8?Q?=c5=81ukasz_Stelmach?= <l.stelmach@samsung.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlrZSwKCk9uIDA3LjA1LjIwMjAgMTg6MTEsIE1pa2UgUmFwb3BvcnQgd3JvdGU6Cj4gT24g
VGh1LCBNYXkgMDcsIDIwMjAgYXQgMDI6MTY6NTZQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3NraSB3
cm90ZToKPj4gT24gMTQuMDQuMjAyMCAxNzozNCwgTWlrZSBSYXBvcG9ydCB3cm90ZToKPj4+IEZy
b206IE1pa2UgUmFwb3BvcnQgPHJwcHRAbGludXguaWJtLmNvbT4KPj4+Cj4+PiBJbXBsZW1lbnQg
cHJpbWl0aXZlcyBuZWNlc3NhcnkgZm9yIHRoZSA0dGggbGV2ZWwgZm9sZGluZywgYWRkIHdhbGtz
IG9mIHA0ZAo+Pj4gbGV2ZWwgd2hlcmUgYXBwcm9wcmlhdGUsIGFuZCByZW1vdmUgX19BUkNIX1VT
RV81TEVWRUxfSEFDSy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWtlIFJhcG9wb3J0IDxycHB0
QGxpbnV4LmlibS5jb20+Cj4+IFRvZGF5IEkndmUgbm90aWNlZCB0aGF0IGtleGVjIGlzIGJyb2tl
biBvbiBBUk0gMzJiaXQuIEJpc2VjdGluZyBiZXR3ZWVuCj4+IGN1cnJlbnQgbGludXgtbmV4dCBh
bmQgdjUuNy1yYzEgcG9pbnRlZCB0byB0aGlzIGNvbW1pdC4gSSd2ZSB0ZXN0ZWQgdGhpcwo+PiBv
biBPZHJvaWQgWFU0IGFuZCBSYXNwYmVycnkgUGk0IGJvYXJkcy4gSGVyZSBpcyB0aGUgcmVsZXZh
bnQgbG9nOgo+Pgo+PiAjIGtleGVjIC0ta2V4ZWMtc3lzY2FsbCAtbCB6SW1hZ2UgLS1hcHBlbmQg
IiQoY2F0IC9wcm9jL2NtZGxpbmUpIgo+PiBtZW1vcnlfcmFuZ2VbMF06MHg0MDAwMDAwMC4uMHhi
ZTlmZmZmZgo+PiBtZW1vcnlfcmFuZ2VbMF06MHg0MDAwMDAwMC4uMHhiZTlmZmZmZgo+PiAjIGtl
eGVjIC1lCj4+IGtleGVjX2NvcmU6IFN0YXJ0aW5nIG5ldyBrZXJuZWwKPj4gODwtLS0gY3V0IGhl
cmUgLS0tCj4+IFVuYWJsZSB0byBoYW5kbGUga2VybmVsIHBhZ2luZyByZXF1ZXN0IGF0IHZpcnR1
YWwgYWRkcmVzcyBjMDEwZjFmNAo+PiBwZ2QgPSBjNjgxNzc5Mwo+PiBbYzAxMGYxZjRdICpwZ2Q9
NDAwMDA0MWUoYmFkKQo+PiBJbnRlcm5hbCBlcnJvcjogT29wczogODBkIFsjMV0gUFJFRU1QVCBB
Uk0KPj4gTW9kdWxlcyBsaW5rZWQgaW46Cj4+IENQVTogMCBQSUQ6IDEzMjkgQ29tbToga2V4ZWMg
VGFpbnRlZDogR8KgwqDCoMKgwqDCoMKgIFcKPj4gNS43LjAtcmMzLTAwMTI3LWc2Y2JhODFlZDBm
NjIgIzYxMQo+PiBIYXJkd2FyZSBuYW1lOiBTYW1zdW5nIEV4eW5vcyAoRmxhdHRlbmVkIERldmlj
ZSBUcmVlKQo+PiBQQyBpcyBhdCBtYWNoaW5lX2tleGVjKzB4NDAvMHhmYwo+IEFueSBjaGFuY2Ug
eW91IGhhdmUgdGhlIGRlYnVnIGluZm8gaW4gdGhpcyBrZXJuZWw/Cj4gc2NyaXB0cy9mYWRkcjJs
aW5lIHdvdWxkIGNvbWUgaGFuZHkgaGVyZS4KCiMgLi9zY3JpcHRzL2ZhZGRyMmxpbmUgLS1saXN0
IHZtbGludXggbWFjaGluZV9rZXhlYysweDQwCm1hY2hpbmVfa2V4ZWMrMHg0MC8weGY4OgoKbWFj
aGluZV9rZXhlYyBhdCBhcmNoL2FybS9rZXJuZWwvbWFjaGluZV9rZXhlYy5jOjE4MgogwqAxNzfC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlYm9vdF9jb2RlX2J1ZmZlciA9IApwYWdlX2FkZHJlc3Mo
aW1hZ2UtPmNvbnRyb2xfY29kZV9wYWdlKTsKIMKgMTc4CiDCoDE3OcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLyogUHJlcGFyZSBwYXJhbWV0ZXJzIGZvciByZWJvb3RfY29kZV9idWZmZXIqLwogwqAx
ODDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNldF9rZXJuZWxfdGV4dF9ydygpOwogwqAxODHCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGtleGVjX3N0YXJ0X2FkZHJlc3MgPSBpbWFnZS0+c3RhcnQ7CiA+
MTgyPMKgwqDCoMKgwqDCoMKgwqDCoMKgIGtleGVjX2luZGlyZWN0aW9uX3BhZ2UgPSBwYWdlX2xp
c3Q7CiDCoDE4M8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAga2V4ZWNfbWFjaF90eXBlID0gbWFjaGlu
ZV9hcmNoX3R5cGU7CiDCoDE4NMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAga2V4ZWNfYm9vdF9hdGFn
cyA9IGltYWdlLT5hcmNoLmtlcm5lbF9yMjsKIMKgMTg1CiDCoDE4NsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLyogY29weSBvdXIga2VybmVsIHJlbG9jYXRpb24gY29kZSB0byB0aGUgY29udHJvbCBj
b2RlIApwYWdlICovCiDCoDE4N8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVib290X2VudHJ5ID0g
Zm5jcHkocmVib290X2NvZGVfYnVmZmVyLAoKID4gLi4uCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVr
IFN6eXByb3dza2ksIFBoRApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
