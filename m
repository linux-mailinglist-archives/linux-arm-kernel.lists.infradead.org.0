Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EAF91A01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 00:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Caq7gIyb6BvScRaxD1DjyX9XjMbnbhPnEc17T4MaD9o=; b=LynV9HBMQ0pmbTcDHj1/Awbyd
	GaqcI+KctA1s3uDW96HTn0Uz6r0dR6KzuRmEZNR/s5Jh7zQPbo9cb/oTisg+OY+mgA1rh0Pl1FLGw
	5cFLxxc/jn62pwhAt7qcovqbS73BTYZ4JLC3uvBQnQYcjnWN/a3OgnsKiJp3xenKKBPc8kUFPIsqA
	kUR6B4hAngQrajJPV6kFAcMKtDm1unC9sp44fN/L338hx77eCmxATrpHjhvR0ZsA+oMZn2t/81VpX
	s0m0HDNtyHz65SwL1fPgvYMOquaKLUVBcLFwrzcagsJ9+UaCNz91FBqJdZ3ms2egBohMq0gmw9taB
	2tnsj6dwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzTrV-0007Cz-QS; Sun, 18 Aug 2019 22:41:21 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzTrF-0007By-Gb
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 22:41:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so5754671pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 15:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=fWYYRNOoBOYDq4LbQtRg/f2l0aWrGmocM0PfWqGUAY4=;
 b=XSlO3H82pGj99uAaz3Mh0ZBRkFrf+IMtqzUPQFc/a7UO3Ln9+urIfvEEkmKIZRUKJ6
 0kFOKtvF2xwwD/su4EbhPm72fmxKzs8hHgoDhWlWoz1tkzJJaXN8C47NkFnIHhh7p+he
 JDnl9ZxP3eIVdRROqK2EKDlg8lKoIEckfc/edVGRo82kmAxDrcWrZMPTPGiC/ilvZO4A
 cstlodeNt4bsoPJsADx6jHcaz6r2/DAz5EK9fkr8lxSnrk0CEQABnsFGOZLg3bvyUBHz
 RHTMFGgpZPJIRPsVdQOC68ByB3GRfvGxY7aCcGeSmG51H3gujMvLclGDArNJuJgHTTpk
 TnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=fWYYRNOoBOYDq4LbQtRg/f2l0aWrGmocM0PfWqGUAY4=;
 b=ZIgQYBaAy7UOXbTflI8zTSN+1i3cd7JYhoLiNUUsY/g+u3V64FnxrS5lD7hfyK3hRH
 Vj0IQpGHEgtpCOE/i4IYei/Hf7xp5PgyGfypjU50OshSE84KB/seb3HPPDpCTwLzHH9e
 YHd0zcEOBJ5DIAMtjFVXAaUPf4cpkj4YS0tNU/yyMSF6pvP8XYOyg5EfUkTjCJvuqudq
 hRRk73zSeDUno2m0JiV6aGJHfOfS5uiZTv2JCIuKvFvQglU8vqnKqnIq1TLgBe3h+Wrm
 aMJO45OkqioLDnrehd2ISgbzdsI6MJThsKPdHozzr13XzRGKMYmdusvUfUvBF4OrHMVf
 03GQ==
X-Gm-Message-State: APjAAAW3V65mcT+IQfOtBm8yORgYwrBzKpzr1grT794teR+5KuepVvYb
 n6YSfY6eY9lGe0woVphmeo9BE8BL
X-Google-Smtp-Source: APXvYqx4ZhZFely0TYocR/6P0NAEseE/xiYmUzuTAY4QBwJ/Drq2ZsSfryG7zMTHBeWoGsWS4BPXTQ==
X-Received: by 2002:a63:e62:: with SMTP id 34mr17079396pgo.331.1566168063111; 
 Sun, 18 Aug 2019 15:41:03 -0700 (PDT)
Received: from [192.168.1.54] (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.gmail.com with ESMTPSA id m9sm24735010pgr.24.2019.08.18.15.41.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 18 Aug 2019 15:41:02 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [BUG] removing and reinserting imx-media causes kernel to explode
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190814092506.GH13294@shell.armlinux.org.uk>
Message-ID: <09dd63bd-2605-dfd5-ad6f-4083f3f52705@gmail.com>
Date: Sun, 18 Aug 2019 15:41:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814092506.GH13294@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_154105_560309_EE14DA87 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA4LzE0LzE5IDI6MjUgQU0sIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90
ZToKPiBJIGp1c3QgZGlkIHRoaXM6Cj4KPiBybW1vZCBpbXgtbWVkaWEKPiBtb2Rwcm9iZSBpbXgt
bWVkaWEKPgo+IGFuZCB3YXMgZ3JlZXRlZCBieSB0aGUgYmVsb3cga2VybmVsIG1lc3NhZ2VzLgoK
WWVzIHRoaXMgbmVlZHMgZml4aW5nLCB0aGUgQ1NJIG5lZWRzIHRvIGNoZWNrIGZpcnN0IHRoYXQg
aXQgaXMgYWxyZWFkeSAKcmVnaXN0ZXJlZCBiZWZvcmUgZ29pbmcgdGhyb3VnaCB0aGUgLT5yZWdp
c3RlcmVkKCkgc3RlcHMuIFBvc3RpbmcgYSBwYXRjaC4KCj4gICAgSSBkb24ndCB0aGluayB0aGlz
IGhhcwo+IGJlZW4gdGhlIGZpcnN0IGlzc3VlIEkgZm91bmQgd2l0aCB0aGUgaU1YIG1lZGlhIHN0
dWZmIGludm9sdmluZyBhIG1vZHVsZQo+IHVubG9hZC9yZWxvYWQgY3ljbGUgLSBtYXkgSSBzdWdn
ZXN0IHRoYXQgdGhpcyBpcyBhZGRlZCB0byB0aGUgdGVzdGluZwo+IHJlZ2ltZSBmb3IgdGhpcyBj
b2RlPyAgVGhhbmtzLgoKSSBkbyB0ZXN0IG1vZHVsZSB1bmxvYWQvcmVsb2FkIGN5Y2xlcywgYnV0
IHY0bDItYXN5bmMgZG9lcyBub3Qgc3VwcG9ydCAKcmUtcmVnaXN0ZXJpbmcgc3ViZGV2aWNlcyB1
bmxlc3MgdGhlIHN1YmRldmljZSBpcyBiYXNpY2FsbHkgY29tcGxldGVseSAKcmVtb3ZlZCBhbmQg
cmUtcHJvYmVkLCBzbyB0aGVyZSB3b24ndCBiZSBhIHdvcmtpbmcgbWVkaWEgZGV2aWNlIGlmIG9u
bHkgCmlteC1tZWRpYSBpcyByZWxvYWRlZC4gU28gSSBoYXZlIGFsd2F5cyB1bmxvYWRlZC9yZWxv
YWRlZCBhbGwgbW9kdWxlcyAKZm9yIGV2ZXJ5IGVudGl0eSBpbiB0aGUgZ3JhcGgsIGkuZS46Cgpy
bW1vZCBpbXg2X21lZGlhIGlteDZfbWVkaWFfY3NpIGlteDZfbWlwaV9jc2kyIG92NTY0MCB2aWRl
b19tdXggCmlteF9tZWRpYV9jb21tb24KCihyZXBsYWNlIG92NTY0MCB3aXRoIHlvdXIgaW14MjE5
IHNlbnNvcikuCgpCdXQgSSdsbCBtYWtlIHN1cmUgdG8gdGVzdCBzaW5nbGUgbW9kdWxlIHVubG9h
ZC9yZWxvYWQgY3ljbGVzIGluIHRoZSBmdXR1cmUuCgpCdXQgbm90ZSBhZnRlciBhcHBseWluZyB0
aGUgcGF0Y2ggbWVudGlvbmVkIGFib3ZlIHRvIENTSSAtPnJlZ2lzdGVyZWQoKSAKY2FsbGJhY2ss
IHRoZXJlIGFyZSBsaXN0IGNvcnJ1cHRpb24gYmFja3RyYWNlcywgc2VlIFsxXS4gVGhlIHJvb3Qg
Y2F1c2UgCmlzIHRoYXQgYm90aCBtZWRpYV9kZXZpY2VfcmVnaXN0ZXJfZW50aXR5KCkgYW5kIG1l
ZGlhX2VudGl0eV9wYWRzX2luaXQoKSAKYWRkIHRoZSBzYW1lIGdyYXBoIG9iamVjdHMgZm9yIHRo
ZSBlbnRpdHkncyBwYWRzLCBzbyBkdXBsaWNhdGUgcGFkIApvYmplY3RzIGFyZSBhZGRlZCB0byB0
aGUgbWVkaWEgZGV2aWNlIHBhZHMgbGlzdC4gUmVtb3ZpbmcgdGhlIHBhZCBvYmplY3QgCmNyZWF0
aW9uIGluIG1lZGlhX2RldmljZV9yZWdpc3Rlcl9lbnRpdHkoKSBmaXhlcyB0aGUgbGlzdCBjb3Jy
dXB0aW9uLiAKU2VuZGluZyBhIHBhdGNoIGZvciB0aGF0IGFsc28uCgpUaGlzIGlzIGEgcHJvYmxl
bSBmb3IgYW55IGVudGl0eSB0aGF0IHNldHMgaXRzIC0+bnVtX3BhZHMgdG8gYSBub24temVybyAK
dmFsdWUgYmVmb3JlIG1lZGlhX2RldmljZV9yZWdpc3Rlcl9lbnRpdHkoKSBpcyBjYWxsZWQuIEZv
ciBleGFtcGxlLCB0aGUgCmZvbGxvd2luZyB3aWxsIHByb2R1Y2UgdGhlIHNhbWUgbGlzdCBjb3Jy
dXB0aW9uIGJhY2t0cmFjZToKCnJtbW9kIHZpZGVvLW11eAptb2Rwcm9iZSB2aWRlby1tdXgKcm1t
b2QgdmlkZW8tbXV4CgpTdGV2ZQoKWzFdCnJtbW9kIGlteDYtbWVkaWEKbW9kcHJvYmUgaW14Ni1t
ZWRpYQpybW1vZCBpbXg2LW1lZGlhCgpbwqAgMjQ5LjM4Nzk1M10gV0FSTklORzogQ1BVOiAyIFBJ
RDogODQzIGF0IGxpYi9saXN0X2RlYnVnLmM6NTMgCl9fbGlzdF9kZWxfZW50cnlfdmFsaWQrMHhh
MC8weGRjClvCoCAyNDkuMzk2NDQyXSBsaXN0X2RlbCBjb3JydXB0aW9uLiBwcmV2LT5uZXh0IHNo
b3VsZCBiZSBlOGZiMDUxMCwgYnV0IAp3YXMgZTkzYjU5MTQKW8KgIDI0OS40MDQwNzZdIE1vZHVs
ZXMgbGlua2VkIGluOiBpbXg2X21lZGlhX2NzaShDKSBpbXg2X21lZGlhKEMtKSAKaW14Nl9taXBp
X2NzaTIoQykgYm5lcCBkd19oZG1pX2FoYl9hdWRpbyBkd19oZG1pX2NlYyBvdjU2NDAgbXV4X21t
aW8gCnZpZGVvX211eCBtdXhfY29yZSBkd19oZG1pX2lteCBkd19oZG1pIGNvZGFfdnB1IGNlYyBp
bXhfdmRvYSAKdmlkZW9idWYyX3ZtYWxsb2MgaW14X21lZGlhX2NvbW1vbihDKSB2NGwyX2Z3bm9k
ZSBpbXhfbGRiIGlteGRybSAKaW14X2lwdV92MyBbbGFzdCB1bmxvYWRlZDogaW14Nl9tZWRpYV9j
c2ldClvCoCAyNDkuNDMwOTU2XSBDUFU6IDIgUElEOiA4NDMgQ29tbTogcm1tb2QgVGFpbnRlZDog
RyBDwqDCoMKgwqDCoMKgwqAgCjUuMy4wLXJjNC0wMTExNS1nNjIxMTlmZDIwZmRhICM1ClvCoCAy
NDkuNDQwMTE1XSBIYXJkd2FyZSBuYW1lOiBGcmVlc2NhbGUgaS5NWDYgUXVhZC9EdWFsTGl0ZSAo
RGV2aWNlIFRyZWUpClvCoCAyNDkuNDQ2Njg5XSBbPGMwMTEzYTU4Pl0gKHVud2luZF9iYWNrdHJh
Y2UpIGZyb20gWzxjMDEwZGU1Yz5dIAooc2hvd19zdGFjaysweDEwLzB4MTQpClvCoCAyNDkuNDU0
NDYyXSBbPGMwMTBkZTVjPl0gKHNob3dfc3RhY2spIGZyb20gWzxjMGJkZmRjYz5dIAooZHVtcF9z
dGFjaysweGQ4LzB4MTEwKQpbwqAgMjQ5LjQ2MTgwNF0gWzxjMGJkZmRjYz5dIChkdW1wX3N0YWNr
KSBmcm9tIFs8YzAxMjhjMjg+XSAKKF9fd2FybisweGUwLzB4MTBjKQpbwqAgMjQ5LjQ2ODc4OV0g
WzxjMDEyOGMyOD5dIChfX3dhcm4pIGZyb20gWzxjMDEyOGM5OD5dIAood2Fybl9zbG93cGF0aF9m
bXQrMHg0NC8weDZjKQpbwqAgMjQ5LjQ3NjMwMV0gWzxjMDEyOGM5OD5dICh3YXJuX3Nsb3dwYXRo
X2ZtdCkgZnJvbSBbPGMwNGU4ZTAwPl0gCihfX2xpc3RfZGVsX2VudHJ5X3ZhbGlkKzB4YTAvMHhk
YykKW8KgIDI0OS40ODUyMDddIFs8YzA0ZThlMDA+XSAoX19saXN0X2RlbF9lbnRyeV92YWxpZCkg
ZnJvbSBbPGMwN2UyYjhjPl0gCihtZWRpYV9nb2JqX2Rlc3Ryb3kucGFydC40KzB4MzAvMHg2NCkK
W8KgIDI0OS40OTQ4MDJdIFs8YzA3ZTJiOGM+XSAobWVkaWFfZ29ial9kZXN0cm95LnBhcnQuNCkg
ZnJvbSAKWzxjMDdlMDFkND5dIChfX21lZGlhX2RldmljZV91bnJlZ2lzdGVyX2VudGl0eSsweGE4
LzB4Y2MpClvCoCAyNDkuNTA1MjU5XSBbPGMwN2UwMWQ0Pl0gKF9fbWVkaWFfZGV2aWNlX3VucmVn
aXN0ZXJfZW50aXR5KSBmcm9tIApbPGMwN2UwMjI0Pl0gKG1lZGlhX2RldmljZV91bnJlZ2lzdGVy
X2VudGl0eSsweDJjLzB4MzgpClvCoCAyNDkuNTE2MTU3XSBbPGMwN2UwMjI0Pl0gKG1lZGlhX2Rl
dmljZV91bnJlZ2lzdGVyX2VudGl0eSkgZnJvbSAKWzxjMDdlY2UzND5dICh2NGwyX2RldmljZV91
bnJlZ2lzdGVyX3N1YmRldisweDkwLzB4YjQpClvCoCAyNDkuNTI2NzkzXSBbPGMwN2VjZTM0Pl0g
KHY0bDJfZGV2aWNlX3VucmVnaXN0ZXJfc3ViZGV2KSBmcm9tIApbPGMwN2Y5NjY4Pl0gKHY0bDJf
YXN5bmNfY2xlYW51cCsweDEwLzB4M2MpClvCoCAyNDkuNTM2MzgyXSBbPGMwN2Y5NjY4Pl0gKHY0
bDJfYXN5bmNfY2xlYW51cCkgZnJvbSBbPGMwN2Y5NzMwPl0gCih2NGwyX2FzeW5jX25vdGlmaWVy
X3VuYmluZF9hbGxfc3ViZGV2cysweDljLzB4MTBjKQpbwqAgMjQ5LjU0Njg0MF0gWzxjMDdmOTcz
MD5dICh2NGwyX2FzeW5jX25vdGlmaWVyX3VuYmluZF9hbGxfc3ViZGV2cykgCmZyb20gWzxjMDdm
OTcwMD5dICh2NGwyX2FzeW5jX25vdGlmaWVyX3VuYmluZF9hbGxfc3ViZGV2cysweDZjLzB4MTBj
KQpbwqAgMjQ5LjU1OTAzNV0gWzxjMDdmOTcwMD5dICh2NGwyX2FzeW5jX25vdGlmaWVyX3VuYmlu
ZF9hbGxfc3ViZGV2cykgCmZyb20gWzxjMDdmYTNhMD5dIChfX3Y0bDJfYXN5bmNfbm90aWZpZXJf
dW5yZWdpc3Rlci5wYXJ0LjQrMHhjLzB4NDQpClvCoCAyNDkuNTcxMTQwXSBbPGMwN2ZhM2EwPl0g
KF9fdjRsMl9hc3luY19ub3RpZmllcl91bnJlZ2lzdGVyLnBhcnQuNCkgCmZyb20gWzxjMDdmYTQw
OD5dICh2NGwyX2FzeW5jX25vdGlmaWVyX3VucmVnaXN0ZXIrMHgzMC8weDUwKQpbwqAgMjQ5LjU4
MjY2NV0gWzxjMDdmYTQwOD5dICh2NGwyX2FzeW5jX25vdGlmaWVyX3VucmVnaXN0ZXIpIGZyb20g
Cls8YmYwM2UwMjA+XSAoaW14X21lZGlhX3JlbW92ZSsweDIwLzB4NTQgW2lteDZfbWVkaWFdKQpb
wqAgMjQ5LjU5MzM4OV0gWzxiZjAzZTAyMD5dIChpbXhfbWVkaWFfcmVtb3ZlIFtpbXg2X21lZGlh
XSkgZnJvbSAKWzxjMDY0YTY4ND5dIChwbGF0Zm9ybV9kcnZfcmVtb3ZlKzB4MjAvMHg0MCkKW8Kg
IDI0OS42MDMwNjhdIFs8YzA2NGE2ODQ+XSAocGxhdGZvcm1fZHJ2X3JlbW92ZSkgZnJvbSBbPGMw
NjQ4YjUwPl0gCihkZXZpY2VfcmVsZWFzZV9kcml2ZXJfaW50ZXJuYWwrMHhkYy8weDFhYykKW8Kg
IDI0OS42MTI5MTddIFs8YzA2NDhiNTA+XSAoZGV2aWNlX3JlbGVhc2VfZHJpdmVyX2ludGVybmFs
KSBmcm9tIApbPGMwNjQ4YzdjPl0gKGRyaXZlcl9kZXRhY2grMHg0NC8weDgwKQpbwqAgMjQ5LjYy
MjE2NF0gWzxjMDY0OGM3Yz5dIChkcml2ZXJfZGV0YWNoKSBmcm9tIFs8YzA2NDc0MDQ+XSAKKGJ1
c19yZW1vdmVfZHJpdmVyKzB4NWMvMHhkOCkKW8KgIDI0OS42MzAyODddIFs8YzA2NDc0MDQ+XSAo
YnVzX3JlbW92ZV9kcml2ZXIpIGZyb20gWzxjMDFkMzA1Yz5dIAooc3lzX2RlbGV0ZV9tb2R1bGUr
MHgxN2MvMHgyMGMpClvCoCAyNDkuNjM4OTI2XSBbPGMwMWQzMDVjPl0gKHN5c19kZWxldGVfbW9k
dWxlKSBmcm9tIFs8YzAxMDEwMDA+XSAKKHJldF9mYXN0X3N5c2NhbGwrMHgwLzB4MjgpClvCoCAy
NDkuNjQ3MjA1XSBFeGNlcHRpb24gc3RhY2soMHhlOTBkNWZhOCB0byAweGU5MGQ1ZmYwKQpbwqAg
MjQ5LjY1MjI3OF0gNWZhMDrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmVl
ZDVkNmMgMDAwMDAwMDMgMDE0MDExMzQgCjAwMDAwODAwIDRmMTNiNmY0IDAwMDAyMDAyClvCoCAy
NDkuNjYwNDc1XSA1ZmMwOiBiZWVkNWQ2YyAwMDAwMDAwMyBiZWVkNWI4MCAwMDAwMDA4MSBiZWVk
NWU3OCAKMDAwMDAwMDEgMDAwMDAwMDAgMDE0MDEwZjgKW8KgIDI0OS42Njg2NjldIDVmZTA6IDAw
MDNiMmM0IGJlZWQ1YjRjIDAwMDFmMjQ4IDRmMTAxMmRjClvCoCAyNDkuNjczODU5XSBpcnEgZXZl
bnQgc3RhbXA6IDQxMTMKW8KgIDI0OS42NzcyNjddIGhhcmRpcnFzIGxhc3TCoCBlbmFibGVkIGF0
ICg0MTMxKTogWzxjMDE4ZDgxMD5dIApjb25zb2xlX3VubG9jaysweDQwOC8weDVmOApbwqAgMjQ5
LjY4NTEyNV0gaGFyZGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoNDEzOCk6IFs8YzAxOGQ0OTA+XSAK
Y29uc29sZV91bmxvY2srMHg4OC8weDVmOApbwqAgMjQ5LjY5Mjk3MF0gc29mdGlycXMgbGFzdMKg
IGVuYWJsZWQgYXQgKDQxNTQpOiBbPGMwMTAyNTgwPl0gCl9fZG9fc29mdGlycSsweDM2MC8weDUy
NApbwqAgMjQ5LjcwMDczNV0gc29mdGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoNDE2NSk6IFs8YzAx
MzA2ZWM+XSAKaXJxX2V4aXQrMHgxMmMvMHgxN2MKW8KgIDI0OS43MDgxMzRdIC0tLVsgZW5kIHRy
YWNlIDZmZGU2M2YxOWM3YjEwYjggXS0tLQoKClN0ZXZlCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
