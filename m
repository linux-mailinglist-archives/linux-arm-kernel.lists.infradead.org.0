Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7E07C149
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAoMGsxASn4NoXwi0NmVeUtogUD2Tei+myYhJ/Nk2Pw=; b=mxUeSUv5mFD6dg
	GNtgqFE8YkkgkhqK3EBjNRLn/HbGQ0/qZATIpr7uGaxmisW4/mC8ApsyNenLVLbVs4rV+scRLZt5y
	eo7sD2W+vKJiVlRg2Hs27MIJE+1pnlsS7ehr5xnbZQJ3fDWIHjQrs95T19UN3NyoagiQtWCk519lv
	PYmbN7WYvkY9wFugoo+4EQ7DKV8avVRg5i6D4osBS0v4J0yK9Ttu2BL/GpT1UHHJ2RCOvPIdhLtBH
	m7iT/iwjctVN7iARAF6oQPEjmOuw4FpTS8dvOrxaiDBaC48N9vvP736vMXJN25+nSOtBsBlqKhfF/
	7bH/qS7pLoBc6h91Ivgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnhX-00010D-Ge; Wed, 31 Jul 2019 12:27:27 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnhQ-0000nl-92
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:27:22 +0000
Received: from [192.168.178.29] ([109.104.44.29]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MOiLp-1hjG7g2E99-00QB6P; Wed, 31 Jul 2019 14:27:07 +0200
Subject: Re: [PATCH 2/2] ARM: dts: at91: add support for Arietta G25
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
 <20190728210403.2730-3-uwe@kleine-koenig.org>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <a4ef1f4c-e439-7876-0d5b-a05d5dbf1f9a@i2se.com>
Date: Wed, 31 Jul 2019 14:27:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190728210403.2730-3-uwe@kleine-koenig.org>
Content-Language: en-US
X-Provags-ID: V03:K1:zTD6UTs+4HWfVKK8Eoic/PiOVZzCOxjRqLNGyA+qyDqUpr065JH
 7WhqzmQQeYbWTasjNA2oAALi5UXRA5EokMnEWyvBdbhmjEE83MhSDzDgmyYzjG6ZKfC7Trg
 jOumN3si1yMWIb5zwL5jgL9ylxCZDXzE758tBiZsT/QX6mbkEArfpQ3zSGzlkDhBOe7AY7g
 HwGiuWvLU7rw5wd1qVuxw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zQOwVmvM6b8=:9HXbyvBWMkVSzG5j0T+vz5
 q4RX1kY98O1pXMgZUZL6c7eFB1TWFKCHCsEy5g1PejetNTU6JOEj27HYdQS6wpc8DalqAroqo
 q890JlJiX6NRWfiUqfb2YzhJ8mXqFhFbXhoUIOOd8CuBcCGsBw9rxMyFpUpoc1HdCt4in+HjW
 Ux9NNMI0BV8cb7I+3OGnRu0g2z6EY9YGB/IXjAd0Xmewikeknl5TqvqqxEZuu87hdBPbapt0F
 wvCwuP7rZTIdZ/HD8Xjeo0FKlO9ljUOEl73O+6FEcokPRDnthtkU1Hu51u9QhT7aWLohGiGRm
 3vEGv6qpCnTS0dlq9FcaI1ltlgfUQe47rQTq8UkeWOdPUwMkmlu5gdCaXHHduwwIs+6W7LX+m
 i3um6x4h606XCvbW3o06IFCKk8I1LdRrVRmgyFOYAL8AR3U3P+4GLcDKyG2wZX2zWtJgARge7
 WxwQRurqMOV3enO3eNx2MHeoAb50DJ7ZCiQ8gXW6NBToCJH4lrWfLK+X21qPUA7qL3Y0pyMzx
 pw7XRO8zVdQR51H88WFZ7avAQ3MBh1VIKHeivwyv55JCVhQas8PoEPGkFy9NpvqTu0AUrAtry
 aGepRPXvavdmPWa87xfF01mJ9k/57s035JyG5vERJVL/ldQqCvyADSODln8XKqXob3z6ckkPT
 SKp0c0NB/WzBxQ3SAOdOuAPDinbLh1ToAtPNwGSL8e/FWYwUtEYh7NuHHqvYtDzL+Ual84Vnu
 MKLsBgT1GZADJhU+m+/GrwRxOmalQY0pPBo88Ujk5dlZk8BRrpWAzcJ8/Ps=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052720_610335_97C6393E 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 info@acmesystems.it
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gMjguMDcuMTkgMjM6MDQsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IFRo
ZSBBcmlldHRhIEcyNSBpcyBhIFNCQyBwb3dlcmVkIGJ5IGEgQVQ5MVNBTUcyNSBydW5uaW5nIGF0
IDQwMCBNSHouCj4gU2VlIGh0dHBzOi8vd3d3LmFjbWVzeXN0ZW1zLml0L2FyaWV0dGEgZm9yIG1v
cmUgZGV0YWlscy4KPgo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xl
aW5lLWtvZW5pZy5vcmc+Cj4gLS0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05ZzI1LWFy
aWV0dGEuZHRzIHwgODYgKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDg2IGluc2VydGlvbnMoKykKPiAgCgpubyBuZWVkIHRvIGFkZCB0aGUgRFRCIHRvIHRoZSBNYWtl
ZmlsZT8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
