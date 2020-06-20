Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B0E201EEF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psEFSgf94bGqVsw2BswO8b+BzMJFY0REsoUCbRFYowQ=; b=RTDsmY8r6bwRO4
	Abpvk8dSKcmrS7isu7YOcoDM3k49nET0WQXkh7oH8zk2OVd1icPHWn6wzDvw6GeGvbW5Ff6N/UJ5j
	l5DYnE9F5WYf5YmLTiV/WAoIPFiTNBfYzq+CXlywLCO6LLT4bPlrdGyy3Xe1WE62QnXxxOLzeQl2K
	NRllMx3kU4HQEPfnNLZYGlekQ+WZkOdwovbwq658dqgo33Pkk7QFy8TEdRypZiD30aWtuFj+tbfED
	G9ahyzVwxINFbnre+eUEeMZk9kKjVYZohbxIjc2hmRS5lwK9AMe5W3eDv6IzMN7Ai8sMqqBeVcRNT
	J+yd+WsqqiRWChzuJjjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmR1c-0002Gv-HE; Sat, 20 Jun 2020 00:06:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmR0G-0007cr-AC
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 00:05:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1194622517;
 Sat, 20 Jun 2020 00:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611499;
 bh=x/Te6LrX1vuf5FcfbCqPhqCmm7ikFmC/oetPoY8NIGk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=eEXLgrijPgYPn98JYZMwYFJsYFXNy/GIeqFqnZXb13D9yVqK9OdAk60rAV4iApBIj
 ZCp2lBTzxdq28nkIvrXwcMRX9lyWEAXfuaAs88t/QU73y6DzzbViI2UkX3hutgBJPs
 SxUlWB3CCHmZnhe4aX32dhFkh7X0Br1pUVfQMtkk=
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-6-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-6-noltari@gmail.com>
Subject: Re: [PATCH 5/8] mips: bmips: add BCM6362 clock definitions
From: Stephen Boyd <sboyd@kernel.org>
To: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com, julia.lawall@lip6.fr, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, lkp@intel.com, mturquette@baylibre.com, robh+dt@kernel.org, Álvaro Fernández Rojas <noltari@gmail.com>
Date: Fri, 19 Jun 2020 17:04:58 -0700
Message-ID: <159261149845.62212.8312224953067777574@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_170500_392979_723A4890 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Álvaro Fernández Rojas <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDIwMjAtMDYtMTUgMDI6MDI6MjgpCj4g
QWRkIGhlYWRlciB3aXRoIEJDTTYzNjIgZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KPiBkZXZpY2UgdHJlZSBmaWxlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+IC0tLQo+ICBp
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzNjItY2xvY2suaCB8IDI2ICsrKysrKysrKysr
KysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzNjItY2xvY2suaAo+
IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzNjItY2xvY2su
aCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYmNtNjM2Mi1jbG9jay5oCj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjE3NjU1Y2Q1YmYyNQo+IC0tLSAvZGV2
L251bGwKPiArKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzNjItY2xvY2suaAo+
IEBAIC0wLDAgKzEsMjYgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAr
ICovCj4gKwo+ICsjaWZuZGVmIF9fRFRfQklORElOR1NfQ0xPQ0tfQkNNNjM2Ml9ICj4gKyNkZWZp
bmUgX19EVF9CSU5ESU5HU19DTE9DS19CQ002MzYyX0gKPiArCj4gKyNkZWZpbmUgQkNNNjM2Ml9D
TEtfQURTTF9RUFJPQyAxCj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfQURTTF9BRkUgICAyCj4gKyNk
ZWZpbmUgQkNNNjM2Ml9DTEtfQURTTCAgICAgICAzCj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfTUlQ
UyAgICAgICA0Cj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfV0xBTl9PQ1AgICA1Cj4gKyNkZWZpbmUg
QkNNNjM2Ml9DTEtfU1dQS1RfVVNCICA3Cj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfU1dQS1RfU0FS
ICA4Cj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfU0FSICAgICAgICAgICAgICAgIDkKPiArI2RlZmlu
ZSBCQ002MzYyX0NMS19ST0JPU1cgICAgIDEwCj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfUENNICAg
ICAgICAgICAgICAgIDExCj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfVVNCRCAgICAgICAxMgo+ICsj
ZGVmaW5lIEJDTTYzNjJfQ0xLX1VTQkggICAgICAgMTMKPiArI2RlZmluZSBCQ002MzYyX0NMS19J
UFNFQyAgICAgIDE0Cj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfU1BJICAgICAgICAgICAgICAgIDE1
Cj4gKyNkZWZpbmUgQkNNNjM2Ml9DTEtfSFNTUEkgICAgICAxNgo+ICsjZGVmaW5lIEJDTTYzNjJf
Q0xLX1BDSUUgICAgICAgMTcKPiArI2RlZmluZSBCQ002MzYyX0NMS19GQVAgICAgICAgICAgICAg
ICAgMTgKPiArI2RlZmluZSBCQ002MzYyX0NMS19QSFlNSVBTICAgIDE5Cj4gKyNkZWZpbmUgQkNN
NjM2Ml9DTEtfTkFORCAgICAgICAyMAo+ICsKPiArI2VuZGlmIC8qIF9fRFRfQklORElOR1NfQ0xP
Q0tfQkNNNjM2Ml9IICovCj4gLS0gCj4gMi4yNy4wCj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
