Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FA8EF784
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 09:47:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xdzGmEcVYt8EprHzD59ZEYdofAj6gskTIwqwKxvtgC0=; b=PWKlHuzaRHL5RR
	LkmG6eg6YjZJCi8fU6T8+j4PDToqHwLQBf2cMOhFiR1db0whBgGQTiRWremBaAEjhC/tTG4jwiVzt
	7h3GANM8BpzokWwdNA1DJkZqYt/UYBLfzBmaku+pWkbxS4P8GcWOX8NxIJ4PukQJgCjJ87kbdBSuJ
	5rWSgrBLChcJUfhvmdzZsxxHDLwzop0pJiMqbchlbciiBQrP9dbJk9VsZHC2z5ftd2r4kZDGW41QC
	pbEg26koPqRmW66lrSSTOgv6Cz/7n+HV6pMiAsyOqI+Zw6TxwIU744a32SiczyFCspkNxBA7xpC+n
	G+7zmMsSfcEHlwK5/uEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRuUo-0006kC-Cq; Tue, 05 Nov 2019 08:47:26 +0000
Received: from m12-11.163.com ([220.181.12.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRuUh-0006iu-LQ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 08:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Mime-Version:Message-ID; bh=lH+jz
 Gdxy7IvVSVSVo6MZm80v9GuSQGvFMsJ7zCs8xY=; b=bNt5s5YFkuTwaVPmD28Fw
 7lGTaBaO4Za6cBv/Gx9NoI9F00ZERiI7AnsWSlZh+QSZPrvUoxErv+8clsrsqL2F
 oynBb0KJ+IxxU1ZoTx4y4xggViiAVaGbeHiZiyJeMsLICcfKwyTYB1e+9jfYF+HU
 y6DJLgjdlUrWQV9vW+b+vY=
Received: from SKY-20180422ZRB (unknown [202.100.50.59])
 by smtp7 (Coremail) with SMTP id C8CowABnh8MIN8FdEx3ABw--.37827S2;
 Tue, 05 Nov 2019 16:47:09 +0800 (CST)
Date: Tue, 5 Nov 2019 16:47:53 +0800
From: "sxauwsk@163.com" <sxauwsk@163.com>
To: "Shubhrajyoti Datta" <shubhrajyoti.datta@gmail.com>
Subject: Re: Re: [PATCH v2] i2c: cadence: try reset when master receive
 arbitration lost
References: <20190219012447.5900-1-sxauwsk@163.com>, 
 <CAKfKVtEwHcydp=+hNhG91h3qbMoYOPq7jEYjbuAVrWXT53DC3Q@mail.gmail.com>
X-Priority: 3
X-GUID: 186E92E8-E129-42B5-B97D-0BAC69171ADB
X-Has-Attach: no
X-Mailer: Foxmail 7.2.14.406[cn]
Mime-Version: 1.0
Message-ID: <2019110516474778997625@163.com>
X-CM-TRANSID: C8CowABnh8MIN8FdEx3ABw--.37827S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7WFyxtFyUGF4Dtr18Cw15Jwb_yoW8Gr1Dpa
 y8G3s3CF4DJrn2vrsrZ3WDuF90grWxGF98KF15Xw1kuas8G34qyFy2kan8tFyxGrWDAwn0
 qFsYv34j9a4DZaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07b1dgAUUUUU=
X-Originating-IP: [202.100.50.59]
X-CM-SenderInfo: 5v0d34lvn6il2tof0z/1tbiDg5kJlXluZcLIAAAs3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_004720_149158_0E9185FA 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [220.181.12.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [220.181.12.11 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sxauwsk[at]163.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Wolfram Sang <wsa@the-dreams.de>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PkhpIFNoaWthaSwKPgo+T24gVHVlLCBGZWIgMTksIDIwMTkgYXQgODoxOSBBTSBTaGlrYWkgV2Fu
ZyA8c3hhdXdza0AxNjMuY29tPiB3cm90ZToKPj4KPj4gV2hlbiB0aGUgYWRhcHRlciByZWNlaXZl
IGFyYml0cmF0aW9uIGxvc3QgZXJyb3IgaW50ZXJydXB0cywKPj4gY2Ruc19pMmNfbWFzdGVyX3hm
ZXIgcmV0dXJuIHRvIHRoZSBjYWxsZXIgZGlyZWN0bHkgaW5zdGVhZCBvZiByZXNldHRpbmcKPj4g
dGhlIGFkYXB0ZXIgd2hpY2ggcmVzdWx0ZWQgaW4gdGhlIGFkYXB0ZXIgYmVpbmcgb3V0IG9mIGNv
bnRyb2wuCj4+Cj4+IFNvIHdoZW4gZHJpdmVyIGRldGVjdCBlcnJfc3RhdHVzIHN1Y2ggYXMgYXJi
aXRyYXRpb24gbG9zdCwKPj4gdGhlbiB0cnkgdG8gcmVwYWlyIGFuZCBmaXggaXQuCj4+Cj5JIGFt
IG1pc3NpbmcgdGhlIGlzc3VlIHRoYXQgeW91IGFyZSBmYWNpbmcuCj5Zb3UgYXJlIGhhdmluZyBh
IG11bHRpbWFzdGVyIHNjZW5hcmlvIGFuZCBnZXR0aW5nIGFyYml0cmF0aW9uIGxvc3QuCj4KPnRo
ZSBjdXJyZW50IGNvZGUgd291bGQgYXR0ZW1wdCBhIHJldHJ5IGRpZCB0aGF0IGxlYWQgdG8gYW55
IGlzc3Vlcz8KPgo+Q2FuIHlvdSBleHBsYWluIHRoZSBpc3N1ZSB0aGF0IHlvdSBhcmUgZmFjaW5n
PyAKCk9mIGNvdXJjZSwgwqBUaGUgZm9sbG93aW5nIGRlc2NyaWJlIG15IHNpdHVhdGlvbi4KCklu
IG15IHByb2R1Y3QsIMKgVG91Y2hzY3JlZW4gY29ubmVjdCB0byB6eW5xLTcwMDAgWEM3WjAxMCBi
eSBpMmMgYnVzKCBKdXN0IGNvbm5lY3Qgb25seSBvbmUgaTJjLWRldmljZSBvZiB0b3VjaHNjcmVl
biksIMKgCndoZW4gdXNlciB0YXAgVG91Y2hzY3JlZW4sIFRvdWNoc2NyZWVuIGludGVycnVwdCBz
ZW5kIHRvIENQVSBhbmQgbm90aWZ5ZWQgaTJjLWRyaXZlciB0byBvYnRhaW4gbG9jYXRpb24gZGF0
YSBieSBpMmMtYnVzLCDCoAoKd2hlbiBUYXAgdGhlIHNjcmVlbiBmcmVxdWVudGx5LCDCoHNvbWV0
aW1lcyBDUFUgZ2V0IGludGVycnVwdCBmcm9tIHRvdWNoc2NyZWVuIGFuZCB0cnkgdG8gb2J0YWlu
IGRhdGEsIMKgdGhlbiBkZXRlY3QgYXJiaXRyYXRpb24gbG9zdCwKQWx0aG91Z2ggaTJjLWRyaXZl
ciB0cnkgdGhyZWUgdGltZXMsIMKgaXQncyB1c2VsZXNzLgrCoMKgCkFjdHVhbGx5IGkyYyBjbG9j
ay1saW5lIGFuZCBkYXRhLWxpbmUga2VlcCBoaWdoLCB0aGF0IG1lYW4gaTJjIGJ1cyBmcmVlLgpP
bmNlIHRoaXMgc2l0dWF0aW9uIG9jY3VyLCBpMmMtY29udHJvbCBkaWQndCB3b3JrIGFueW5heSBi
dXQgY3B1IHJlY2VpdmUgaW50ZXJycHV0cyBzdGlsbC4KCkkgYW0gc29ycnkgdGhhdCBJIGhhdmUn
dCBmb3VuZCBhIGdvb2Qgc29sdXRpb24gZm9yIHRoaXMgaXNzdXNlOwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
