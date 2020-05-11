Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 012F01CD1F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 08:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TppGbrWsT/JowzduVzVAtsPCHpTQNzFp6LCoklR7UTw=; b=CybyTh/984cYgh
	dBsNkp5QtIBnBzrUrrgejyOhbfmWcHwuqGFuZa8hOT9ROdKVtljHUAJXpNnW6O21IUxIC249NEnc0
	K/6+YspPRpWyzqTbNP6UKB8pFCr3xUnaMd8l4WJ5bj3eaHZoRmjRgTuCH2QO5dHDtw0s0kdEUvJSt
	2cYBVjMFhsPImN7ksmOtuLatGot5VHlv/83zT4dG/lvemJGjQJmWcCi+fzvRY/DLgpIE8ySa5yIX6
	pG3xcPpSk4oP61QNcbOQgN6Uitb16GnjvwD1wXe+HqFxdzpcP8WD+cUKMPMoVl+Y+Xjyj53peYTX3
	dfQNK/B3seClVjGBVAcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY23W-0004tW-MC; Mon, 11 May 2020 06:36:50 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY23N-0004sp-Pg
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 06:36:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200511063638euoutp01c57bd6441776556f1eac33bdc814ffbf~N5eET4WlF0043800438euoutp01s;
 Mon, 11 May 2020 06:36:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200511063638euoutp01c57bd6441776556f1eac33bdc814ffbf~N5eET4WlF0043800438euoutp01s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589178998;
 bh=Ylr6oV5MTHitaD4ecDqT3Dgf/oTl0b2za1BVdOaEwhg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=kd1vHxMyMbSphShD1GqPxYSauOVcX0Jx7wY6xJhk8l2ndBxZjk24SBs0LnqWvzKZz
 NsPOHne3EUemdluWTFiHVb+vzSJJYkEygdxq4YBfQuy/84+Xi8wtT2mA63f9lOsgbB
 0TaEBMrgYr24Rz7bKAwQy2NAyTWXOiow3331pee4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200511063638eucas1p29157fbb6a6d0cf5feb48353886bea8df~N5eED5sxz3213332133eucas1p2L;
 Mon, 11 May 2020 06:36:38 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id B9.33.61286.672F8BE5; Mon, 11
 May 2020 07:36:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200511063637eucas1p2001793c8e2aeb5ab9d4bdd904cb30cfc~N5eDuTDR20092100921eucas1p2R;
 Mon, 11 May 2020 06:36:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200511063637eusmtrp152e12d3489d98a4e2450a1a454ab80a0~N5eDtHgIB1171311713eusmtrp1S;
 Mon, 11 May 2020 06:36:37 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-cc-5eb8f2769a9a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D1.34.07950.572F8BE5; Mon, 11
 May 2020 07:36:37 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200511063635eusmtip1b4af72cc5b63a7e71b083ad27fce7cf0~N5eB_XIQv0294902949eusmtip1e;
 Mon, 11 May 2020 06:36:35 +0000 (GMT)
Subject: Re: [PATCH v4 02/14] arm: add support for folded p4d page tables
To: Mike Rapoport <rppt@linux.ibm.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <665dade8-727a-3318-6779-3998080da18f@samsung.com>
Date: Mon, 11 May 2020 08:36:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200508174232.GA759899@linux.ibm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TbUxTZxTH89y3XpqVXCuOR0fc1jgSZ8Q1m8lZXNic+3D1w+KSxQ/Gt27e
 IRkU1woDP7hCC4GmbtrhrIX5AoKAHZ0FtKB1rHPUloiMJgQ3LTo0sQTWWkaQFnC3vTj59jvn
 /M/zP/8PD0sqZ5lVbL72kKDTagpUjJy63Dd7e31JzL3nrce9JNQ7HQzMW/tkcMnmpKG7coSC
 aEUlCZFmC4JqIwHnZuM0VP2wGX6ssyKY91xiYO5UlICJ2Dp4EvDJ4I63BcHo1XJR3jNNgWts
 mIaIyc1AtPofGoI99QyEHM9oqJ+rJcF7woMgMbMgWtX7aeg0eBkw2x8x4KoJMuC40SiDG84r
 BIzUGhjwnLiP4JarVTQbDFHQ1R8hwXR3I4xaPcQH2bzjtAPxweE/SD4RtyK+8runDB/89ijB
 N4QNFH/81nq+235PxjdeCxO8ZcJE8662GoZ3xawyfqAuSvE3bQmKP9bQi/jbLge5PWun/L39
 QkF+iaDbkLtPfiDYeZU+6F5ZavutnTIg5wozSmMx9w7uCPvJJCu5FoTH5jdJ/C/ChnNfmZFc
 5CmEawLXZc8XZlrjtDS4gHDQeZGSigjC7acfUEnVcm4rPtrxe4ozuGxcMW0nkiKSeyzHhrmb
 KT+GU2PzpJlJsoLLxVXhuRRT3Bv4jqcbJXkFtxv3N3YgSbMM+089TD2aJp4RCbSkmORexcau
 OlLiTPznwzMpM8wNp+Hmmmkk3f0RHnTWLvJyPO7rXMyThfu/t1DSghHhBwM/yaTCIoarsC1u
 bMJ3B+LieaxosRY7ezZI7c34ZOQKkWxjLh2PTC6TjkjH1ssnSamtwNVVSkmdje2+9v9tfx0c
 Io8hlX1JNPuSOPYlcewvfM8iqg1lCsX6wjxBr9YKX+foNYX6Ym1ezudFhS4kfoj+BV/MjaaH
 PvMijkWqlxTbX3PvUdKaEn1ZoRdhllRlKPiQ2FLs15QdFnRFe3XFBYLei15hKVWm4u2G8G4l
 l6c5JHwpCAcF3fMpwaatMiCjtuliaeLva7+sGfdkFWfsMB4+Ip8fLbPtjSwEdplireqdE59O
 zbz7+jb//W3jTV806bo6rab2uEe2MTr6JPQhtpTnGm0r6ZyP7wX+agucYfH193tC59fl7+iy
 lqrP++mn5dG1vZbVPw9t+cZXF0mfKtq1tbni2di+BHb0vTz5Cago/QGN+k1Sp9f8B4MG/RkM
 BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0xTVxzHPffVC7PJXYVwRkzU+sq2WFcQ+2NxRI2bx7gsRrN/cIoNXh6x
 pay3JUqWrAqY2oBio6SWik6CQW1ELziKWB/VwYDAMI1EdMLcWLIq8uhikIe40rqE/z45v+/n
 fM9JfjytquCS+fwCi2gu0BvUXDzTNdv+bI017Nv7WcXD1eBp8HLw1tmmgOuuBhZayh4zMHak
 jIbRi+UI7CUU/DQ5xcLRqk1wttqJ4K3/OgczZ8YoGA5/CuOd7QroD9QjGGw9HInffM2A/Fcf
 C6OlPg7G7CMsBG96OBjwvmPBM3OKhsBpP4LpidlIlaeDhSZbgAOH+28O5GNBDrwPahXwoKGZ
 gsenbBz4T/+BoFu+FCnrHWDgRtcoDaW/p8Gg009tXEW8NV5Egn0PaTI95USk7MQbjgSPV1Dk
 QsjGkJPda0iL+5mC1N4KUaR8uJQl8uVjHJHDTgXpqR5jyK+uaYZUXriLyG+yl96xOFOzwWyy
 WsSleSbJ8oV6txZSNNp00KSsS9doU3V7Pk9JU6/N2LBfNOQXiea1Gfs0ecGmVrbQ99FB1/2r
 jA01JDpQHI+FdXji0hTrQPG8SqhDeLK1m4sNFuOOKhsb40V4ps/BxUKvEJab71Fzg0XCNlzR
 +AszxwnCKnzktZuaC9HCi3hcf87z3hincO+13ui1nKDFjleOKCuFDHw0NBNlRliJ+/0taI4T
 hT34Sl8ZimU+xB1nhqINcZG3jnbWR5kW1uOaxud0jJfgkhvV7zkJPxk6R1UilXue7p6nuOcp
 7nnKecRcRgmiVTLmGqUUjaQ3StaCXE22ySijyCr+3DbZ5EOOkV0BJPBIvVC5Y6lvr4rVF0mH
 jAGEeVqdoCQDkSPlfv2hYtFsyjJbDaIUQGmRz52kkxOzTZHFLrBkadO0OkjX6lJ1qetBnaS0
 C/e+Uwm5eot4QBQLRfP/HsXHJdvQicGO4KPlO7mhLYbOpCfbQhM/uP6M/yDnjenLTrVu5T/F
 Pbf6/11Qm+UamZ5qDc4OZz7KP/t1UWXO/fDBcsPz7eeDOWLx0123M37ku5YRua7m480rvl+9
 s3F7b9Ude3rhu5CN/0ZTp3uZ/dW3zfaRcPZxx9bDmQd6atqfliy5eme8sO22mpHy9NpPaLOk
 /w+fr36koAMAAA==
X-CMS-MailID: 20200511063637eucas1p2001793c8e2aeb5ab9d4bdd904cb30cfc
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
 <98229ab1-fbf8-0a89-c5d6-270c828799e7@samsung.com>
 <20200508174232.GA759899@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_233642_036745_83B126CE 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

SGkgTWlrZSwKCk9uIDA4LjA1LjIwMjAgMTk6NDIsIE1pa2UgUmFwb3BvcnQgd3JvdGU6Cj4gT24g
RnJpLCBNYXkgMDgsIDIwMjAgYXQgMDg6NTM6MjdBTSArMDIwMCwgTWFyZWsgU3p5cHJvd3NraSB3
cm90ZToKPj4gT24gMDcuMDUuMjAyMCAxODoxMSwgTWlrZSBSYXBvcG9ydCB3cm90ZToKPj4+IE9u
IFRodSwgTWF5IDA3LCAyMDIwIGF0IDAyOjE2OjU2UE0gKzAyMDAsIE1hcmVrIFN6eXByb3dza2kg
d3JvdGU6Cj4+Pj4gT24gMTQuMDQuMjAyMCAxNzozNCwgTWlrZSBSYXBvcG9ydCB3cm90ZToKPj4+
Pj4gRnJvbTogTWlrZSBSYXBvcG9ydCA8cnBwdEBsaW51eC5pYm0uY29tPgo+Pj4+Pgo+Pj4+PiBJ
bXBsZW1lbnQgcHJpbWl0aXZlcyBuZWNlc3NhcnkgZm9yIHRoZSA0dGggbGV2ZWwgZm9sZGluZywg
YWRkIHdhbGtzIG9mIHA0ZAo+Pj4+PiBsZXZlbCB3aGVyZSBhcHByb3ByaWF0ZSwgYW5kIHJlbW92
ZSBfX0FSQ0hfVVNFXzVMRVZFTF9IQUNLLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWtl
IFJhcG9wb3J0IDxycHB0QGxpbnV4LmlibS5jb20+Cj4+Pj4gVG9kYXkgSSd2ZSBub3RpY2VkIHRo
YXQga2V4ZWMgaXMgYnJva2VuIG9uIEFSTSAzMmJpdC4gQmlzZWN0aW5nIGJldHdlZW4KPj4+PiBj
dXJyZW50IGxpbnV4LW5leHQgYW5kIHY1LjctcmMxIHBvaW50ZWQgdG8gdGhpcyBjb21taXQuIEkn
dmUgdGVzdGVkIHRoaXMKPj4+PiBvbiBPZHJvaWQgWFU0IGFuZCBSYXNwYmVycnkgUGk0IGJvYXJk
cy4gSGVyZSBpcyB0aGUgcmVsZXZhbnQgbG9nOgo+Pj4+Cj4+Pj4gIyBrZXhlYyAtLWtleGVjLXN5
c2NhbGwgLWwgekltYWdlIC0tYXBwZW5kICIkKGNhdCAvcHJvYy9jbWRsaW5lKSIKPj4+PiBtZW1v
cnlfcmFuZ2VbMF06MHg0MDAwMDAwMC4uMHhiZTlmZmZmZgo+Pj4+IG1lbW9yeV9yYW5nZVswXTow
eDQwMDAwMDAwLi4weGJlOWZmZmZmCj4+Pj4gIyBrZXhlYyAtZQo+Pj4+IGtleGVjX2NvcmU6IFN0
YXJ0aW5nIG5ldyBrZXJuZWwKPj4+PiA4PC0tLSBjdXQgaGVyZSAtLS0KPj4+PiBVbmFibGUgdG8g
aGFuZGxlIGtlcm5lbCBwYWdpbmcgcmVxdWVzdCBhdCB2aXJ0dWFsIGFkZHJlc3MgYzAxMGYxZjQK
Pj4+PiBwZ2QgPSBjNjgxNzc5Mwo+Pj4+IFtjMDEwZjFmNF0gKnBnZD00MDAwMDQxZShiYWQpCj4+
Pj4gSW50ZXJuYWwgZXJyb3I6IE9vcHM6IDgwZCBbIzFdIFBSRUVNUFQgQVJNCj4+Pj4gTW9kdWxl
cyBsaW5rZWQgaW46Cj4+Pj4gQ1BVOiAwIFBJRDogMTMyOSBDb21tOiBrZXhlYyBUYWludGVkOiBH
wqDCoMKgwqDCoMKgwqAgVwo+Pj4+IDUuNy4wLXJjMy0wMDEyNy1nNmNiYTgxZWQwZjYyICM2MTEK
Pj4+PiBIYXJkd2FyZSBuYW1lOiBTYW1zdW5nIEV4eW5vcyAoRmxhdHRlbmVkIERldmljZSBUcmVl
KQo+Pj4+IFBDIGlzIGF0IG1hY2hpbmVfa2V4ZWMrMHg0MC8weGZjCj4+PiBBbnkgY2hhbmNlIHlv
dSBoYXZlIHRoZSBkZWJ1ZyBpbmZvIGluIHRoaXMga2VybmVsPwo+Pj4gc2NyaXB0cy9mYWRkcjJs
aW5lIHdvdWxkIGNvbWUgaGFuZHkgaGVyZS4KPj4gIyAuL3NjcmlwdHMvZmFkZHIybGluZSAtLWxp
c3Qgdm1saW51eCBtYWNoaW5lX2tleGVjKzB4NDAKPj4gbWFjaGluZV9rZXhlYysweDQwLzB4Zjg6
Cj4+Cj4+IG1hY2hpbmVfa2V4ZWMgYXQgYXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYzox
ODIKPj4gICDCoDE3N8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVib290X2NvZGVfYnVmZmVyID0K
Pj4gcGFnZV9hZGRyZXNzKGltYWdlLT5jb250cm9sX2NvZGVfcGFnZSk7Cj4+ICAgwqAxNzgKPj4g
ICDCoDE3OcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogUHJlcGFyZSBwYXJhbWV0ZXJzIGZvciBy
ZWJvb3RfY29kZV9idWZmZXIqLwo+PiAgIMKgMTgwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzZXRf
a2VybmVsX3RleHRfcncoKTsKPj4gICDCoDE4McKgwqDCoMKgwqDCoMKgwqDCoMKgwqAga2V4ZWNf
c3RhcnRfYWRkcmVzcyA9IGltYWdlLT5zdGFydDsKPj4gICA+MTgyPMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGtleGVjX2luZGlyZWN0aW9uX3BhZ2UgPSBwYWdlX2xpc3Q7Cj4+ICAgwqAxODPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGtleGVjX21hY2hfdHlwZSA9IG1hY2hpbmVfYXJjaF90eXBlOwo+PiAg
IMKgMTg0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBrZXhlY19ib290X2F0YWdzID0gaW1hZ2UtPmFy
Y2gua2VybmVsX3IyOwo+PiAgIMKgMTg1Cj4+ICAgwqAxODbCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC8qIGNvcHkgb3VyIGtlcm5lbCByZWxvY2F0aW9uIGNvZGUgdG8gdGhlIGNvbnRyb2wgY29kZQo+
PiBwYWdlICovCj4+ICAgwqAxODfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlYm9vdF9lbnRyeSA9
IGZuY3B5KHJlYm9vdF9jb2RlX2J1ZmZlciwKPiBDYW4geW91IHBsZWFzZSB0cnkgdGhlIHBhdGNo
IGJlbG93Ogo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21tL2luaXQuYyBiL2FyY2gvYXJtL21t
L2luaXQuYwo+IGluZGV4IDk2M2I1Mjg0ZDI4NC4uZjg2YjNkMTc5MjhlIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtL21tL2luaXQuYwo+ICsrKyBiL2FyY2gvYXJtL21tL2luaXQuYwo+IEBAIC01NzEs
NyArNTcxLDcgQEAgc3RhdGljIGlubGluZSB2b2lkIHNlY3Rpb25fdXBkYXRlKHVuc2lnbmVkIGxv
bmcgYWRkciwgcG1kdmFsX3QgbWFzaywKPiAgIHsKPiAgIAlwbWRfdCAqcG1kOwo+ICAgCj4gLQlw
bWQgPSBwbWRfb2ZmX2soYWRkcik7Cj4gKwlwbWQgPSBwbWRfb2Zmc2V0KHB1ZF9vZmZzZXQocDRk
X29mZnNldChwZ2Rfb2Zmc2V0KG1tLCBhZGRyKSwgYWRkciksIGFkZHIpLCBhZGRyKTsKPiAgIAo+
ICAgI2lmZGVmIENPTkZJR19BUk1fTFBBRQo+ICAgCXBtZFswXSA9IF9fcG1kKChwbWRfdmFsKHBt
ZFswXSkgJiBtYXNrKSB8IHByb3QpOwpUaGlzIGZpeGVzIGtleGVjIGlzc3VlISBUaGFua3MhCgoK
RmVlbCBmcmVlIHRvIGFkZDoKClJlcG9ydGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+CkZpeGVzOiAyMThmMWMzOTA1NTcgKCJhcm06IGFkZCBzdXBwb3J0
IGZvciBmb2xkZWQgcDRkIHBhZ2UgdGFibGVzIikKVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tp
IDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+CgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXBy
b3dza2ksIFBoRApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
