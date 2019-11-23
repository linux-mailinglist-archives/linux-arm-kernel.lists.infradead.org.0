Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4C4107F95
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 18:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRxYiw3xzT5KeL+VqRuUHT8ExnpL3zXkahldpRZOsn8=; b=bnpa4bNcPZmJpi
	1Bx2yiw6j83KTsgHcEQcd7MzQo8q1b6X3sCEtd/rQ7JuacVSc+jk3YY/hEcDJR4Nf14HiTIQKnrqD
	0fhhFZJRqTVtSqperbCym8e0kJIpf70nbtc/r+iLBYmo8NvjHyEZLo1mWeMOwBYnr76eD8gcXyvqp
	COFF0Cago5ruvK0o2c7iU5mGhz7jlEbFmuIL1rykK2tfhpbZwpovx3wkbG5WsoLtqz12pQVtMekZu
	zlgDyWfTs9ypFph5R8wWEAUW1MjIBEZbNKrWaXvHrx3Kkan27LuVkZES2ASWWKDgLVtC2qD75ZpMB
	y/QF5vBDnzaOqCnC9lCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYYuh-0005u3-4U; Sat, 23 Nov 2019 17:09:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYYuX-0005tc-C0
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 17:09:30 +0000
Received: by mail-lj1-x241.google.com with SMTP id e10so1796580ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 Nov 2019 09:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=j83nFTVfMtqNZdG7bDqp5KO3Sy0JHsgiNUcUKGNznRw=;
 b=QD9WVRWY3GaW82EE2neF3DzIT1RKW2ZHKO+Ruxgkcm81kVJ5vP93G8wMwXnoWYto2l
 1765iU4Fe0Iqqo7yi5IrZemz9T/7ur7sFPk83r31GxXBwpmxt0lkKKWsBP9IM6UB9sRE
 ZDCv+/k/PSg7i+XKEpJtjpBwyrrzpPn1uw3a4nY8wawKwN8Mss0m3y1moxz5dt/VaEby
 fr3RxjePoV8r/cu9nIAJ/nx9f65uHEBpilkLJV79/AvMvGTzyIQdDATsXpaj/R293ews
 1H1tVCWn1hXo1DfZEfC32POgm0txPTRb4b+wLdLszIhRPHpL/tvv+8uwLVaAyfmMGDlg
 SgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=j83nFTVfMtqNZdG7bDqp5KO3Sy0JHsgiNUcUKGNznRw=;
 b=Hj5EFX2b7Kfk35npkNZdvAkv3ayNDfxi9FRPUEDaMiX1mKpmq+QY3NEYoTrrhTFqV2
 icd16CQhul2N2TjKlds2e0VoXy709CCsRq1yTOlFgSL2UHNhCLBEXR9oj4DXs3DlkJD/
 9IjHCAP0DKQr7lMqcJwUQTOtANA5v8Wjg3u4EoFMnv1rTtDPLWkE+fkNb2qws+aFsjfq
 i1vYIoVWhQqEJAc6WrkgbgxH/bm+mIrIvxjKkkpN6UyeQEV3mkhR6cyK+fBc2RCmB/7k
 BCczVsNRZLRQmYEKTZRWK6w2rTp158htFfAfzRCsjS0IB/1HNnXuTFyYUMnFKau+Zq7l
 9/eA==
X-Gm-Message-State: APjAAAXbbKOMeF/MZ8p+ONGV1EtLegDBvQZ4aTAjbyrgh7RRs/IVo6Hy
 xmxuMZBATd+qCTH9FajQJuVs3DRhzfoIg35pbQw=
X-Google-Smtp-Source: APXvYqxQ019+TumcDMsHiVKMajnZaruf8NAyKLasRWn/pDaLWWYVx54vzDNZbe0VjeeZE8NSjNIYrlBnFYrI4ts/7UU=
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr16591026ljs.239.1574528965875; 
 Sat, 23 Nov 2019 09:09:25 -0800 (PST)
MIME-Version: 1.0
References: <59793b1ae533636528942b2cec14ec68b9830fcf.1574510649.git.agx@sigxcpu.org>
In-Reply-To: <59793b1ae533636528942b2cec14ec68b9830fcf.1574510649.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 23 Nov 2019 14:09:28 -0300
Message-ID: <CAOMZO5DjXfSoWRV-6pvAD+nwXLRAxRASZOsOwLFbsxkNwTUxaw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: Add eLCDIF controller
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_090929_434760_1CB1DF98 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBOb3YgMjMsIDIwMTkgYXQgOTowOSBBTSBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hj
cHUub3JnPiB3cm90ZToKPgo+IEFkZCBhIG5vZGUgZm9yIHRoZSBlTENESUYgY29udHJvbGxlciwg
ImRpc2FibGVkIiBieSBkZWZhdWx0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIg
PGFneEBzaWd4Y3B1Lm9yZz4KPiAtLS0KPiBXaXRoIHNvbWUgbWluaW1hbCBzdXBwb3J0IG9uIGlt
eDhtcSB3ZSBtaWdodCBhcyB3ZWxsIGFkZCBpdCB0byB0aGUgRFQKPgo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSB8IDE3ICsrKysrKysrKysrKysrKysrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4bXEuZHRzaQo+IGluZGV4IDdmOTMxOTQ1MmI1OC4uMDBhYTYzYmZkODE2IDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiBAQCAtNDQ4
LDYgKzQ0OCwyMyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnNsLHNkbWEt
cmFtLXNjcmlwdC1uYW1lID0gImlteC9zZG1hL3NkbWEtaW14N2QuYmluIjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICB9Owo+Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgbGNkaWY6IGxjZGlm
QDMwMzIwMDAwIHsKCkZvcmdvdCB0byBzYXkgdGhhdCBnZW5lcmljIG5vZGUgbmFtZXMgYXJlIHBy
ZWZlcnJlZCwgc28gbWF5YmU6CgpsY2RpZjogbGNkLWNvbnRyb2xsZXJAMzAzMjAwMDAgewoKaW5z
dGVhZD8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
