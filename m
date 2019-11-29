Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B12D10DA3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 20:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knQGvZhWx5O798O8x9zDBTInRDzydQFcoN6GycBcNF4=; b=qj9l+0Q7rCTWeO
	jyWE+xfwsZ/42Pbg36bNapQ6ujBw+JrOGVF6EnNWFbkUbcVvzuml/a/7N2pDAuLb0EXu7g+QCrjZP
	7OPKVMIVy0Pfr8KKHhHDP6DOzSIA2eIvalM/S9TtBd45FNlp5FSRopc0yY6I650W9FqOlR6bC93vb
	W04BXGHV+wy/v/jGMup2yc6K5YLb7ocfuOykX9YjrKlDxbc3LBuMhAGG+yGMqkzEoQNU78Ee7OqO0
	Js316WDU0d6EibzEJVJaUkEPfRiJdah3HiC+U3qBrEgDvVgk3czkFxoUdjmqe5TMsIyn52ugd/+1/
	txheTeIKPnqQO05UCLRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamGb-0003fy-JS; Fri, 29 Nov 2019 19:49:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamGQ-0003fZ-Ng
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:49:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id 203so23381238lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 11:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fBnj05Eh4vt/qckTOfX4DMzfi31Ryvk7fXMdBVIV/rY=;
 b=KydJdq1QA2zZAeBkqhj2V46cvAvxvxGbz4MMaJ70OrWEAcZlvWx/ZVn0vwpTY/vEV+
 16QsAODLnSTxf1gOc2XR5CCuM04rhH2mHfVTXvJrCssdT66ZW+9danUP5yU+v4Pk0ypQ
 oXA8SymZnrZAs9/xLMcbdufTlvHxo+cEIQ6ssDaOeHqbFW7x6YhWpv4JjTg4wi42f14k
 S1PRQh0KkGzyIGJ4AJqEqtH98nfLk/16kMifwzi2p7hxIyShW3LGdR0kHdo99Ac2//hW
 UuAcg3bXtUuj88hu1ruw1nEWvDyxFBb89RPtXwqg40s92raZ32cIUoTVsXp3xRlfNRkI
 mHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fBnj05Eh4vt/qckTOfX4DMzfi31Ryvk7fXMdBVIV/rY=;
 b=QLnCckvDYKRFT1DyukWUwxAUaIN5EgrYVxLMi8KNMQODq2uCDYqk5cjd5NJes2LqpG
 1M9fUpa7jZ5Zfy5gTcNbnMXkfLP5Et55Vf8pa71r/FSYFNZnY6PaJtFn0+xXrdMO5eZy
 MsllfdQ8+IxRDyvQdOybgHw0DDwPb8TsN3GuS/nnU+D1ZQo629GuOoq405U3bsstzukK
 XaTDyo7diNSNpnlDp2jg7wZxj13uq+lvVGbyyXNfXrc0PAXJCtjLoIzUwiaGL6nh9mF0
 oIt2PavzTiv5m99yG4q9CggNFsVO3HP2IAS+khQL4dIgVRmHJo5oqDbIb2R9Sk89SJ98
 JeBQ==
X-Gm-Message-State: APjAAAXK2cRRcHYw1prChUnWmAGTi970Ffm3zEbcSwN+S0++Z5xU2Cht
 rBHvRszBbHibee2K/QNxu3fUgqQXcyhcs5sxrWg=
X-Google-Smtp-Source: APXvYqxtTPuuT1Vh36OW8NOSd7X7fwzEom9MD0Gh+xzrA1PUqS3z6w13CLFApoRnrIWs+eTFNITNVgOfDrryREaW5y0=
X-Received: by 2002:a19:f80a:: with SMTP id a10mr26306239lff.107.1575056952064; 
 Fri, 29 Nov 2019 11:49:12 -0800 (PST)
MIME-Version: 1.0
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-4-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20191129190541.30315-4-manivannan.sadhasivam@linaro.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 29 Nov 2019 16:49:25 -0300
Message-ID: <CAOMZO5Btkd0NLM5RBFZHD5dryE7mR5JZRLC2X__pQNmjHGCywA@mail.gmail.com>
Subject: Re: [PATCH 3/5] media: i2c: imx290: Add RAW12 mode support
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_114914_796994_DC2230D5 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, c.barrett@framos.com,
 linux-kernel <linux-kernel@vger.kernel.org>, a.brela@framos.com,
 Peter Griffin <peter.griffin@linaro.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Fri, Nov 29, 2019 at 4:07 PM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
               }
> +
> +               imx290->bpp = 10;
> +
> +               break;
> +       case MEDIA_BUS_FMT_SRGGB12_1X12:
> +               ret = imx290_set_register_array(imx290, imx290_12bit_settings,
> +                                               ARRAY_SIZE(
> +                                                       imx290_12bit_settings));

Could you please write the ARRAY_SIZE and its parameter in the same line?

It would improve readability.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
