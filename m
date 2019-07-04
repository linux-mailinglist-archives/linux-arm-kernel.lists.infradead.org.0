Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21A45F751
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 13:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMg4WJXrFIiktDqZDxLHaIIiTaLj6KAoH1z4VUf8CK0=; b=Qm5ttl7V9RpCbl
	BDQMgHmobfJ9T9Jg7oirbY91zfKVALRm/fE0VbanUf+YDC5Xzn32QMoCRuuctc51MKc1jmcuJtwZ3
	6aI16JTgwFj/uXhbAg7aor/zeAfDAFBdkWCSNCrq620bkLiZe00lDmzyzjUg+4Mg+LODsZBomqNdL
	NX6NFveVCQDsTOscQrNBNt8LCI2JJszNthtgtuGfgQX+QxQmnJb8UgkUQIRS6JDJYVZKbfhRZ4S0d
	rNvtavGXNe7okSGGScBflUa28bV1x6fDjn1dnXvE0L7OXKrGMbzq6hGnjzJzy/BoQlGr+tPa8bzWG
	fawn4u3I5I651vBulmwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj0Bm-0007xb-7W; Thu, 04 Jul 2019 11:46:10 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj0BT-0007mk-L5
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 11:45:53 +0000
Received: by mail-lj1-x243.google.com with SMTP id 131so5879845ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 04:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EcGyPuegWpkyLveOwqViCG+5n+jaNm8XsLEeG0/iRsA=;
 b=jRqEA9jpdiAIsbLYJeNpbrSUkTbSqZrrluMKjb9VCqgfn2JcBOi6jk8Lk3VntTNsBD
 BgHH6LXMaL4kyRzhjTLmRe3b0gsJyTYzoK2B+Eur6PXvz9Aggp5XneLBHifpoDN5OJgH
 X9YctfaM0YwCqQ1gjCmcLdGRr32QGoR4Lu/UUL5eMLiuQ90ucdjoLvN+5JqMUT5XDUuP
 8qOcxjCKSHc40xwDTQUKVL1wUxMZkQfJ4PU6lZtgBonl83Emx/EX9BPwm6YGwnLiEpOh
 7Aq7oC7XSZkyyHPDK6cpFQ+9Rxe8zUgNBnj8yTdCyK6h/K98NQHaT+U/sFb+uJX3gezp
 JPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EcGyPuegWpkyLveOwqViCG+5n+jaNm8XsLEeG0/iRsA=;
 b=OFXN8Uz+PG9F7zXxIN2ANvcOONbFq2frxVU1/4m2Ok5Ls5LQLFaX1/gTvDQdPPQcJ3
 s/JaynHAShTRxyAZAu4OoaZhgHOvM57xXn5vxcFsPRnMJdq6zkcD1sNovGz+xYYEsPzt
 LyspUc4+hce1wvnfKPPwnLKnW75VPsl8tpNbOv8TrVHTMpBrrUyvs8FIv07LORsaIwXG
 RjTPywB8L3iGsuHmmwVqE4/Zu9qNCVjiWSAT+h8lQj3+kvQY5ilOZnZgUwuLp/QOplo9
 xhibNrnSWDgQwl4fi7R6jiE3XI+T3xavcftRUP1BZ2cesf7gpYb4kiM1/DzvFKYPO3Wq
 1Xtw==
X-Gm-Message-State: APjAAAV9DpNrKPkT7XYl8ufMgxk7NoGkpkCOUcQBfJCmV29OZaEzmlYX
 ogsKpX42kyzgtoHvvC6rLv/8w+omFIucXV1Npq0=
X-Google-Smtp-Source: APXvYqxECjz+P/SVIEx+OjvWTRlZkQMIrPms1adAd7ZXiedN8D0FPNO2bMbtUF3epg7DzVZNjb5gcaEF3aKBt0VIH3s=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr4663565lje.214.1562240747757; 
 Thu, 04 Jul 2019 04:45:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 4 Jul 2019 08:45:37 -0300
Message-ID: <CAOMZO5Buo4psm_JOH-3OTQQ0t+QGGRSabBWKFksP9W10Tr-hOA@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix clock frequency property name
 of I2C buses
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_044551_782300_D8F06C14 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdWwgNCwgMjAxOSBhdCA4OjAxIEFNIFPDqWJhc3RpZW4gU3p5bWFuc2tpCjxzZWJh
c3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4gd3JvdGU6Cj4KPiBBIGZldyBib2FyZHMgc2V0
IGNsb2NrIGZyZXF1ZW5jeSBvZiB0aGVpciBJMkMgYnVzZXMgd2l0aAo+ICJjbG9ja19mcmVxdWVu
Y3kiIHByb3BlcnR5LiBUaGUgcmlnaHQgcHJvcGVydHkgaXMgImNsb2NrLWZyZXF1ZW5jeSIuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNr
aUBhcm1hZGV1cy5jb20+CgpSZXZpZXdlZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21h
aWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
