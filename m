Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEF12000BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 05:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZB4HcQYNv9pgdGTu986uDuU4d8KWpopVAcvndlUo76c=; b=qRaJOlk4K+3FPB
	dlXpdQ5PwxWmgvF70PXfGpGO8y58RfMIL7AxeWwtSd/d4j5dE5DwhEEEwS1QQhXLf+WnVmtTfueXB
	lBPLDHH0eJbMH03IuM2ook5ySaEIUNACUNZuEW/OfxpcjfZVKx/Zj9fOwMkGWgBpD4VtzsTZ7ZOvW
	zhUFuwkZtLUNeiFmGqWZWTjrOhB/JSQ5EhXvIuXbwGdsXRJPxBG59B5DsVQKkw00Y1FA3KrzLvj3s
	bNp+vY6mT2+pUq+GYrBzCIo3pecbHd1eNCf2bQ3LA7ewW84nq50tKgl9+VE3yauoOibnTuKkmjNIT
	WCT9vJb58ftdt1+AE2eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm7iE-0007l6-Id; Fri, 19 Jun 2020 03:29:06 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm7i3-0007kc-Mj
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 03:28:56 +0000
Received: by mail-io1-xd43.google.com with SMTP id t9so9653552ioj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 20:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XVvgSNSDtsxcUWZQpJFepMFACRYXaU7328HldZ9nvGo=;
 b=jMf6x7AkGagBU8CyXfuVwgwRFffghhZ7JHnellb+sRxNosxaJio3mRR0LAOyRX2+qZ
 vjjgNxrithNnI4exr4UwISSe6gzcdUAuh0oJvz3C784tgKJFatJubDqVqVUn4Msf4ntL
 TbVgaghvDjefMpY+m6d2RUsmA0Ppxfj87x+upM9L3TVLXNxjdh2mODNiI1ltaDmnDfuL
 EBwsgPlfmx/tl67f94G9hpfdDtH/UlQRzlHGhosKhM6+HJmYlrtX5n3Hw5yrSTbzg7pv
 yQRGUrfo9jxW3OovY/rL0fmWt4W+jwz5DLeSFlbMiV+ON8Pki+7ccYIsA3OxQFQUBY40
 a8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XVvgSNSDtsxcUWZQpJFepMFACRYXaU7328HldZ9nvGo=;
 b=SwKPGdjqKIIzk/gg40Kn5FSP8wVCc91iLDvIhPIZWkE5l3e6OBmtK3xrrVoqzhwyPD
 CGysApNcim7fpCoofTPT5GwX9MMYJx6YMFlA+JYnL9hqwNXhF48swYxnfXGU5QMmNR0I
 G3YZPQMWwwdS1eISep2VDQpTxbIL7uZpY9YPQUTUP6zYHmhMyN3T5iXy2jWiNWNrC9jC
 Vfhu18AS7+oTgQ8YPpKfyevzWpOvT6VqFL3VnUVdjP+Vpb6r4C323teQiCQls6P3KEpt
 g56TW0XbzCZ7Z3jIrEPIx+HyNm3xwSwcAwNnqOaM0mOw1Klo0VOXxngjI0Vdu5kX5yao
 EVtA==
X-Gm-Message-State: AOAM533dIPtnx4UCUlYXEAJlx8GnuPXeAzIYWHfhJ++/gGaLhsEox2pY
 EEqWmupY4zF5NvroICdxkQneZy+QEeTk6RN2N/A=
X-Google-Smtp-Source: ABdhPJzjagCdebZlS8m6JXrZGP9z70lgYtHO1GQuEMRsPz/ePxtJEpwTF8B/BbAvUPdcRywX1bmw0JxcKzegyAQo3ig=
X-Received: by 2002:a05:6602:2c0a:: with SMTP id
 w10mr2152043iov.46.1592537334338; 
 Thu, 18 Jun 2020 20:28:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200601230607.31740-1-andrew.smirnov@gmail.com>
In-Reply-To: <20200601230607.31740-1-andrew.smirnov@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Thu, 18 Jun 2020 20:28:19 -0700
Message-ID: <CAFXsbZqJMVscHo2J8qDErQ3uxTz0v4LXJWkE_18+skZoE_c+Dw@mail.gmail.com>
Subject: Re: [PATCH] clk: imx: vf610: add CAAM clock
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_202855_765121_66FA53A1 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cphealy[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Horia_Geant=C4=83?= <horia.geanta@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-imx@nxp.com, Fabio Estevam <festevam@gmail.com>,
 linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gYSBWeWJyaWQgVkY2MTAgYmFzZWQgcGxhdGZvcm0gSSB0ZXN0ZWQgdGhpcyB3aXRoIDUuOC1y
YzEuICBXaXRoIHRoZQpuZWNlc3NhcnkgRFRTIHBhdGNoLCB0aGUgQ0FBTSB3b3JrZWQgY29ycmVj
dGx5IGZvciBtZS4KClRlc3RlZC1ieTogQ2hyaXMgSGVhbHkgPGNwaGVhbHlAZ21haWwuY29tPgoK
T24gTW9uLCBKdW4gMSwgMjAyMCBhdCA0OjA2IFBNIEFuZHJleSBTbWlybm92IDxhbmRyZXcuc21p
cm5vdkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gQWNjb3JkaW5nIHRvIFZ5YnJpZCBTZWN1cml0eSBS
TSwgQ0NNX0NDR1IxMVtDRzE3Nl0gY2FuIGJlIHVzZWQgdG8gZ2F0ZQo+IENBQU0gaXBnIGNsb2Nr
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogQW5kcmV5IFNtaXJub3YgPGFuZHJldy5zbWlybm92QGdtYWlsLmNv
bT4KPiBDYzogQ2hyaXMgSGVhbHkgPGNwaGVhbHlAZ21haWwuY29tPgo+IENjOiBTaGF3biBHdW8g
PHNoYXduZ3VvQGtlcm5lbC5vcmc+Cj4gQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWls
LmNvbT4KPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtaW14QG54cC5jb20KPiAtLS0K
PiAgZHJpdmVycy9jbGsvaW14L2Nsay12ZjYxMC5jICAgICAgICAgICAgIHwgMSArCj4gIGluY2x1
ZGUvZHQtYmluZGluZ3MvY2xvY2svdmY2MTAtY2xvY2suaCB8IDMgKystCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jbGsvaW14L2Nsay12ZjYxMC5jIGIvZHJpdmVycy9jbGsvaW14L2Nsay12ZjYxMC5jCj4g
aW5kZXggY2QwNGU3ZGMxODc4Li41MTI5ZWY4ZTFkNmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9j
bGsvaW14L2Nsay12ZjYxMC5jCj4gKysrIGIvZHJpdmVycy9jbGsvaW14L2Nsay12ZjYxMC5jCj4g
QEAgLTQzOCw2ICs0MzgsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgdmY2MTBfY2xvY2tzX2luaXQo
c3RydWN0IGRldmljZV9ub2RlICpjY21fbm9kZSkKPiAgICAgICAgIGNsa1tWRjYxMF9DTEtfU05W
U10gPSBpbXhfY2xrX2dhdGUyKCJzbnZzLXJ0YyIsICJpcGdfYnVzIiwgQ0NNX0NDR1I2LCBDQ01f
Q0NHUnhfQ0duKDcpKTsKPiAgICAgICAgIGNsa1tWRjYxMF9DTEtfREFQXSA9IGlteF9jbGtfZ2F0
ZSgiZGFwIiwgInBsYXRmb3JtX2J1cyIsIENDTV9DQ1NSLCAyNCk7Cj4gICAgICAgICBjbGtbVkY2
MTBfQ0xLX09DT1RQXSA9IGlteF9jbGtfZ2F0ZSgib2NvdHAiLCAiaXBnX2J1cyIsIENDTV9DQ0dS
NiwgQ0NNX0NDR1J4X0NHbig1KSk7Cj4gKyAgICAgICBjbGtbVkY2MTBfQ0xLX0NBQU1dID0gaW14
X2Nsa19nYXRlMigiY2FhbSIsICJpcGdfYnVzIiwgQ0NNX0NDR1IxMSwgQ0NNX0NDR1J4X0NHbigw
KSk7Cj4KPiAgICAgICAgIGlteF9jaGVja19jbG9ja3MoY2xrLCBBUlJBWV9TSVpFKGNsaykpOwo+
Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svdmY2MTAtY2xvY2suaCBi
L2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svdmY2MTAtY2xvY2suaAo+IGluZGV4IDk1Mzk0ZjM1
YTc0YS4uMGYyZDYwZTg4NGRjIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xv
Y2svdmY2MTAtY2xvY2suaAo+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svdmY2MTAt
Y2xvY2suaAo+IEBAIC0xOTUsNiArMTk1LDcgQEAKPiAgI2RlZmluZSBWRjYxMF9DTEtfV0tQVSAg
ICAgICAgICAgICAgICAgMTg2Cj4gICNkZWZpbmUgVkY2MTBfQ0xLX1RDT04wICAgICAgICAgICAg
ICAgICAgICAgICAgMTg3Cj4gICNkZWZpbmUgVkY2MTBfQ0xLX1RDT04xICAgICAgICAgICAgICAg
ICAgICAgICAgMTg4Cj4gLSNkZWZpbmUgVkY2MTBfQ0xLX0VORCAgICAgICAgICAgICAgICAgIDE4
OQo+ICsjZGVmaW5lIFZGNjEwX0NMS19DQUFNICAgICAgICAgICAgICAgICAxODkKPiArI2RlZmlu
ZSBWRjYxMF9DTEtfRU5EICAgICAgICAgICAgICAgICAgMTkwCj4KPiAgI2VuZGlmIC8qIF9fRFRf
QklORElOR1NfQ0xPQ0tfVkY2MTBfSCAqLwo+IC0tCj4gMi4yMS4zCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
