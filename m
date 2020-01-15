Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5157A13C844
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wq+TibU5d1hTcaTRyqc70oH0EqQUf5kCxOFkYg8wVRE=; b=VJwAfHZcdXpAJO
	sds4cKtoJKv2gSTJeVrqYBVQC/XatUAUxOyE6cJui/7Rbl8lhhMRlLtOuAxCprE/TEHgJfxth54lG
	fDlaldjYF8n55r6brJZgDO5WMeDwIcGMS8ZbMhBZSX1SD4zpHLqpJJjssPJYGvKeI8ZXKHFeKA8kG
	Naki+vBVT8c6R9nq3a8bGTiyHIZpasRAOEoH5N72djEvE2QqdjuBQvTkewM0pbouRGVRyU6YzC4CO
	XvKCq+g9TLPLTm5wkg6Nz7DosFDJ3l4vqnO/JoE/qL5r/7Gc9sKjUTDvoX/25OilLyh16VBtgq+Zj
	MhOIDv6IRl2bYsbpNgMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkr0-0000iC-Es; Wed, 15 Jan 2020 15:45:10 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkqg-0000gx-Dr
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:44:56 +0000
Received: by mail-lj1-x242.google.com with SMTP id l2so19045235lja.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 07:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j6qO9VzKyk7Z93B4IKp3Dn6tsqDnHK6bXBO21eqtHYE=;
 b=n+Pzcz1+IOcutRo3c4azf501upOdSlYmce/1ymEaSU6taxHi624WfiWl9E/PkPeU+W
 zmoCV4mhSe/ekbBTOH9rK0ZM6b9XJX3eVDFdg+Ib26+TKokfrxEk7nwKpqs1Vh/p9lV2
 zkfUyZfCadMpObcqAzsGxLv5D6KHqplT+ajemtqeJm0NFLAKjAsOfBTna07EQGagbaks
 7k7sN0jXSpeS6WXYZ+hSlGl4ZcnQ8+cJRknLwrE/fUyhbFZuNRTlfYkRlC26VFWGooM7
 yO/2VPpkq7lN9T6KED6EN9smTRVKCdSFW9sGphDnN4R8oSFXQS5n7Ljxist1ok/Lzam7
 kQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j6qO9VzKyk7Z93B4IKp3Dn6tsqDnHK6bXBO21eqtHYE=;
 b=SpgRMovt0bPDaRd5ao5ChxIAh5wYCxMrl1F4HqoZ/OiSROtypsqqtMjsR4dsaJdVOI
 lbG8DgQLwyo7MHlk7V9aMieZEqfMx/uLxu6TjtQhGiVzfN/GpUN3AV4FLz3UPfUisTni
 zvWMcfJeDreuZuZ34HoWwc2HUCjXUt4m2yZMso7aYOcC4h+w0lWn8e6JVnsOHYso8hDq
 REbGfXXtnGylliHnzv2hK8L97adebJ9smJ8Jhnj+MtuTXnudl8n5G0skuuOXCCHYVQfm
 D42UsGuz4CWx18StZdcnYjrTqJB7lWKLmRsbG48CIcuXuOrFpXL4UOP7qhX9vWD5YWlq
 /M5g==
X-Gm-Message-State: APjAAAWktxmz6d8NaH6ECu4obuGv7p5thI2kZb3HPhYdOqe3BpEoL5Vm
 TKKTyEFXhKtfwUD2lAohrU4rtiyWIG+osatoOE4=
X-Google-Smtp-Source: APXvYqySLu2yqOOpQ0eFNaIf6kY20xHX68+A3EN+yMINPWehdz7Nm1bbK7aAWTU/lZY/OfC9pZD+rINYCV6EB0c4GDk=
X-Received: by 2002:a2e:8197:: with SMTP id e23mr2177769ljg.250.1579103088404; 
 Wed, 15 Jan 2020 07:44:48 -0800 (PST)
MIME-Version: 1.0
References: <1579052348-32167-1-git-send-email-Anson.Huang@nxp.com>
 <1579052348-32167-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1579052348-32167-2-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 15 Jan 2020 12:44:35 -0300
Message-ID: <CAOMZO5C7wKF8ojMBPuQZYtBK8W+vwXe8PaL5n-Mo74gF1HD6Tg@mail.gmail.com>
Subject: Re: [PATCH V9 2/3] pinctrl: freescale: Add i.MX8MP pinctrl driver
 support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_074450_468364_8EB6A9DB 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, marcin.juszkiewicz@linaro.org,
 NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, maxime@cerno.tech,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 10:43 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Add the pinctrl driver support for i.MX8MP.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
