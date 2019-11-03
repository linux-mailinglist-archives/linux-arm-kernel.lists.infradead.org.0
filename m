Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254F9ED2BC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 10:34:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3F0u/OClgMdehiNV6PTsm4TbTqLv51U8pHM0L7a5fg=; b=jdGIKgBjf2yNbg
	XWW5EX/EEogokiPXHWT4l3KOXuaH3wmYnoqbt+oLgeq8H4RFhv2cwgEmE4IugVO5r8R7YS0Rr4CWq
	9eLOeuc5GMVIbzPQNsfVBzv7za0RE0M4WQzu0f1pJMqwcREqQG0/+QLTExHaX/CAaRAGDIOYZ2mjy
	NHxdinbbbuS5WMzwD5m/bNLj3STfs3FySEWKRLA2uqaj4q4j5Hmw2H01f0B0KHmpLjn+T6aN/7ZBr
	NonLsp3UFFEtNQMazvzjUJzBmHEE3tjyyXVeQlfFW1a8AT5dyyYALbme+aTqbD7k0wvdJl1iIJAhp
	b2EbJM8rbXkUB97SrsRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRCHW-0000RW-W2; Sun, 03 Nov 2019 09:34:47 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRCHQ-0000Qq-II
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 09:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572773654;
 bh=JDudkfcLPlmic6l/Jq8in0aJVqg42HYoE+FBfr8EspE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=U0tGWWB1CCXG69FCpLlBPzNWRsUIvuWq0jeQhPCBRzj3jSqGmvaHKwCQKRIOleW7a
 XnLTDoLYIT9bMwvtWQoQwEA1Zx7Kpl22UNFkvvtO6qXCqUH5S1EFJEc4VYC+wdmRpo
 ChykDebyHU/wB7K5kpd+cUAqEhXaSzOm+9PnBagk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MAfYm-1iGDvS0u9Q-00B0AS; Sun, 03
 Nov 2019 10:34:14 +0100
Subject: Re: [PATCH RFC V2 5/6] net: bcmgenet: Add RGMII_RXID and RGMII_ID
 support
To: Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, "David S . Miller"
 <davem@davemloft.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
 <1572702093-18261-6-git-send-email-wahrenst@gmx.net>
 <b1b998af-c28f-f037-647d-63c4fb52fe95@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <aa43630e-1816-3023-5b6a-11c71fe4a258@gmx.net>
Date: Sun, 3 Nov 2019 10:34:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b1b998af-c28f-f037-647d-63c4fb52fe95@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:bFXIRqBd2zkQgCI4V54naT2Sza6rLEiWuqjZZKTD2Tq9udKfs0h
 3avxGzGgZmE+uZKDvxGszNYIRPjMuZqI6n8qxYRnJm4UCdCHnYM+/UCJSEUHY/aaRhp3ODN
 +QvhE37EuAlWelBmVOZn9/iyrFZIPY4AprMcI15yA8e3qLSbrVYK4aRWSi88J8OmJNRKrMg
 LtTkS+cjSbXSDkfvK1kIw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Mh8oxiu88A0=:GwBN3mdTNB86sq3Cp7XE9P
 SKSIYUw16xxmA8p5OEW33OAU8PifSGiJiCPuE1c86yqr1lyjysSqpXyPdI0QmNMyD0alMPbKa
 KAd0eM5YLukggUgrVLgock+UEcYshoyGJ8vnBFvA05idTudk9717AW9rR0uRmdseEkrgloqbM
 P1PVAXxeuOvtJeCxHwlxcs9cmnIEu7KzJkSHEWEVMm//uGL4OVhMERI8xNucOhHLOi7xRmRtU
 Y33gV9oZLR26fb3yebS3QnDk90D++j6w9C0oB/oEHAzZe/5Og92J20MI3VHcqJlKltMaUWDxs
 9kxuBlEm0UwBsPqwJqT2vT39i3zPjUZtoOtSvzfXFKE6XmzdLCeKMFUnKCAjFmpp6Qj+D1hD2
 6Ro2pqx04/HO6poLqbgDezr4l3MKtPh9UmzycML9Cu862e2jn4S6vQCMk8jmbWAvg27jLv3Yh
 +ikl5S/XmmKibxxY166n6c6+n6kJSAHZbYYmRErX8ojoj5jmXaRaQrQxuM0zRY2N3sN82Tl5B
 u2EC3hlS8CAnzpE+AETC38lycVNz3h1F7OCbpK2qEnkvTYdnJNyTPq/plQ+m2APD2opni8h8X
 tyJXNp58i26FEw/qIF1HH8aps+tpLqjPmvmNnaD6QFNbIiyBESHQqGg93eUfaHPfNeBd13g+6
 W6TMxeRzeN85MLk2hMYCHENI6xXykmxKpnqd4dUqmYZXHM0ZTvinz55UUG2mFffqMeb875Hs8
 H7eoPB+Qx1h294qtKnpibz5sXTcbIWEWGC24mW5koQTyFip9lZfRbFMe72AvBgia09cHpIPA6
 1NKMsYftvEc6EIHBUvFAmymc+dYMQtEBnMNSqjUfVhvFfwVBUn11YBbQ0RYUQykUPPZ+mxnsA
 ZHS6yhJqN+qPzxT+GrQga+hqEM2SIfEb6hjwRbj4+pvwPyS1ChNqoJNLRnc5f2WKRA6HFXwnB
 uZJqviydSyOEe7+JOh6DZQLHLSjobU3psCtBLxYZ6vhVlEN/pvsasGRnDwwtEnlRRzZ43Pvk6
 lzqEz9Do2V7wUrC4ub+q7XnOLBbyy28wuluuEhOZqoauE7oySp5kWpDo55JS/5kl1UGNA0WBM
 CVYFU7EtHF5M33QMKrgzmigY/HmVlp6zK7BEhVDzIRueFLW3FfzpaiTwyFUrIHALQa1J7iOx8
 G+cTHpY1BZQbYghAZ2hiNArGeqTHqDFOUFexobFQHG8NjKrK4dbn4OMslvRTyV5kBHiwpslQp
 Z2xGyfHv8IoRl+CHH/XQZkojj0TaQJ/++enhNXJXfAUh11P4iSn2D5IH3R6s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_013440_900363_3C5929AA 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDIuMTEuMTkgdW0gMjE6MDAgc2NocmllYiBGbG9yaWFuIEZhaW5lbGxpOgo+Cj4gT24gMTEv
Mi8yMDE5IDY6NDEgQU0sIFN0ZWZhbiBXYWhyZW4gd3JvdGU6Cj4+IFRoaXMgYWRkcyB0aGUgbWlz
c2luZyBzdXBwb3J0IGZvciB0aGUgUEhZIG1vZGVzIFJHTUlJX1JYSUQgYW5kCj4+IFJHTUlJX0lE
LiBUaGlzIGlzIG5lY2Vzc2FyeSBmb3IgdGhlIFJhc3BiZXJyeSBQaSA0Lgo+IEFyZSBib3RoIHVz
ZWQ/ClNvcnJ5LCB0aGUgd29yZGluZyB3YXMgYSBsaXR0bGUgYml0IHVubHVja3kuIE9ubHkgdGhl
IFJHTUlJX1JYSUQgaXMgdXNlZC4KPiAgWW91ciBuZXh0IHBhdGNoIG9ubHkgdXNlcyAicmdtaWkt
cnhpZCIuIENhbiB5b3UgcmVtaW5kIG1lCj4gb2YgdGhlIEdUWEMgYW5kIFJYQyBza2V3IHNldHRp
bmcgdGhlIFBIWSB5b3UgYXJlIHVzaW5nIGNvbWVzIHVwIHdpdGg/CgpJIGR1bXBlZCB0aGUgZm9s
bG93aW5nIHJlZ2lzdGVyIHZhbHVlcyBiZWZvcmUgYmNtNTR4eF9jb25maWdfY2xvY2tfZGVsYXkK
dHJpZXMgdG8gY2hhbmdlIHRoZSB2YWx1ZXM6ClNIRFdTRUxfTUlTQzogMHg3MUU3ClNIRF9DTEtf
Q1RMOiAweDAxMDAKCmh0dHBzOi8vZ2l0aHViLmNvbS9yYXNwYmVycnlwaS9saW51eC9pc3N1ZXMv
MzEwMSNpc3N1ZWNvbW1lbnQtNTQ0MjY2NjE1Cgo+IEFuZCB0aGlzIHdhcyB0ZXN0ZWQgd2l0aCBC
cm9hZGNvbSBQSFkgKGRyaXZlcnMvbmV0L3BoeS9icm9hZGNvbS5jKQo+IGRyaXZlciBvciB3aXRo
IHRoZSBHZW5lcmljIFBIWSBkcml2ZXI/CgpBZnRlciBhcHBseWluZyB0aGUgc2VyaWVzIGknbSBn
ZXR0aW5nIHRoZSBmb2xsb3dpbmcgb3V0cHV0OgoKW8KgwqDCoCA1LjQzMTI2Ml0gYmNtZ2VuZXQg
ZmQ1ODAwMDAuZXRoZXJuZXQ6IGZhaWxlZCB0byBnZXQgZW5ldCBjbG9jawpbwqDCoMKgIDUuNDMx
MjcxXSBiY21nZW5ldCBmZDU4MDAwMC5ldGhlcm5ldDogR0VORVQgNS4wIEVQSFk6IDB4MDAwMApb
wqDCoMKgIDUuNDMxMjgzXSBiY21nZW5ldCBmZDU4MDAwMC5ldGhlcm5ldDogZmFpbGVkIHRvIGdl
dCBlbmV0LXdvbCBjbG9jawpbwqDCoMKgIDUuNDMxMjk0XSBiY21nZW5ldCBmZDU4MDAwMC5ldGhl
cm5ldDogZmFpbGVkIHRvIGdldCBlbmV0LWVlZSBjbG9jawpbwqDCoMKgIDUuODgwNjYwXSBsaWJw
aHk6IGJjbWdlbmV0IE1JSSBidXM6IHByb2JlZApbwqDCoMKgIDUuOTcwNzUxXSB1bmltYWMtbWRp
byB1bmltYWMtbWRpby4tMTk6IEJyb2FkY29tIFVuaU1BQyBNRElPIGJ1cwpbwqDCoCAxMS41NzA2
NzJdIGJjbWdlbmV0IGZkNTgwMDAwLmV0aGVybmV0OiBjb25maWd1cmluZyBpbnN0YW5jZSBmb3IK
ZXh0ZXJuYWwgUkdNSUkgKFJYIGRlbGF5KQpbwqDCoCAxMS41ODMyMzFdIGJjbWdlbmV0IGZkNTgw
MDAwLmV0aGVybmV0IGV0aDA6IExpbmsgaXMgRG93bgpbwqDCoCAxNi44MTEwNDVdIGJjbWdlbmV0
IGZkNTgwMDAwLmV0aGVybmV0IGV0aDA6IExpbmsgaXMgVXAgLSAxR2Jwcy9GdWxsCi0gZmxvdyBj
b250cm9sIHJ4L3R4CgpTbyBpIGFzc3VtZSBpdCdzIHRoZSBCcm9hZGNvbSBQSFkuCgpSZWdhcmRz
ClN0ZWZhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
