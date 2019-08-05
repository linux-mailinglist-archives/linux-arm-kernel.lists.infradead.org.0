Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC6A82521
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 20:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UZX2ecAJswecCJ/VhvC+ctRCeakZeRn6e1iOYl7RXzI=; b=FytDAxHzbCEbZ9
	ngPH+O4TMSCSvGjlZfbpw28K+yvUhEBtS/7SQbtm5lKdm4fQpABDdfHzI2R+/W0u3J68b9Jrst7wX
	BKFfoqklkDRBY3SjEVXenmaaTXTFUPPkXydQFrYEz8rUIEWtorbSglK3cuZCmMtED+K5GEQISegoo
	mDfXm+NkEA33UtlbU0rpbmoPuPQO+QhZhqiqWas2/ip4Sz7I/DYHPxAkofKYOggrgJWkC5SkU0yXE
	SWN/ggJ7xkIyuU3qxUCJxm4LnFCmGJQwMb3ZoFkF8z6jdZhkYhBtwMTF3fD+IdTLgbzuWdT9Ec5s3
	ytNPyT0Ra13AzdEiywBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hui9F-00019Z-U2; Mon, 05 Aug 2019 18:55:58 +0000
Received: from gateway31.websitewelcome.com ([192.185.144.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hui8u-00018y-KJ
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 18:55:37 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 4D61626ADE4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  5 Aug 2019 13:55:35 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id ui8thE6PD3Qi0ui8thxZfd; Mon, 05 Aug 2019 13:55:35 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4oitkPyzu59yuzJ8cpXBWop1iWqnQ/XBOg9TEqWZEew=; b=c2qOfqJXrRp8mZENbNXd45JsFc
 nzQdoM04/hXlmEi1/JZUWbZHkpbKVujwtKpRFHfmNAt/6tD0ud15VmzcVYx2fclip4mcRfRF5CI3N
 lAUSNO54BG/deJB1A8nj7SNX/1bE+2r/97caxNuaGcgwyJmtA5LekbVqXVt4EWLFQn6uo88urlvRd
 AkRFgDseS05WZV66TL1jSP7lZhY+Jd++oCWzcHgSl5LGpPoy+8cxJ7w7GWHR2hDetNZbDi/gpxV8E
 LXds5y8iTnkVbEEPiBIepY9XzLdn+zD0a3QmHlchoBAa65d71az64ryyjX5QUvSR8CKCjjirMOmKr
 l/o6etQg==;
Received: from [187.192.11.120] (port=37284 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hui8r-002vrg-QY; Mon, 05 Aug 2019 13:55:33 -0500
Date: Mon, 5 Aug 2019 13:55:33 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH] MIPS: BCM63XX: Mark expected switch fall-through
Message-ID: <20190805185533.GA10551@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hui8r-002vrg-QY
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:37284
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 16
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_115536_752001_12156172 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.144.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gu
CgpUaGlzIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZyAoQnVpbGRpbmc6IGJjbTYz
eHhfZGVmY29uZmlnIG1pcHMpOgoKYXJjaC9taXBzL3BjaS9vcHMtYmNtNjN4eC5jOiBJbiBmdW5j
dGlvbiDigJhiY202M3h4X3BjaWVfY2FuX2FjY2Vzc+KAmToKYXJjaC9taXBzL3BjaS9vcHMtYmNt
NjN4eC5jOjQ3NDo2OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFst
V2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgaWYgKFBDSV9TTE9UKGRldmZuKSA9PSAwKQogICAg
ICBeCmFyY2gvbWlwcy9wY2kvb3BzLWJjbTYzeHguYzo0Nzc6Mjogbm90ZTogaGVyZQogIGRlZmF1
bHQ6CiAgXn5+fn5+fgoKU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2
b0BlbWJlZGRlZG9yLmNvbT4KLS0tCiBhcmNoL21pcHMvcGNpL29wcy1iY202M3h4LmMgfCAxICsK
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvbWlwcy9w
Y2kvb3BzLWJjbTYzeHguYyBiL2FyY2gvbWlwcy9wY2kvb3BzLWJjbTYzeHguYwppbmRleCBkMDJl
YjlkMTZiNTUuLjkyNWM3MjM0OGZiNiAxMDA2NDQKLS0tIGEvYXJjaC9taXBzL3BjaS9vcHMtYmNt
NjN4eC5jCisrKyBiL2FyY2gvbWlwcy9wY2kvb3BzLWJjbTYzeHguYwpAQCAtNDc0LDYgKzQ3NCw3
IEBAIHN0YXRpYyBpbnQgYmNtNjN4eF9wY2llX2Nhbl9hY2Nlc3Moc3RydWN0IHBjaV9idXMgKmJ1
cywgaW50IGRldmZuKQogCQlpZiAoUENJX1NMT1QoZGV2Zm4pID09IDApCiAJCQlyZXR1cm4gYmNt
X3BjaWVfcmVhZGwoUENJRV9ETFNUQVRVU19SRUcpCiAJCQkJCSYgRExTVEFUVVNfUEhZTElOS1VQ
OworCQkvKiBlbHNlLCBmYWxsIHRocm91Z2ggKi8KIAlkZWZhdWx0OgogCQlyZXR1cm4gZmFsc2U7
CiAJfQotLSAKMi4yMi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
