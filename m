Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2997F1829B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 08:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBGugk9Ld89kBjPAG4kbORtHIEQGKJ9BUrHPD04n7fo=; b=GNmI51qf8iWvgR
	ovX7lPSqREgTDDD61wBsO1eM96eyyljaYzL2mULt9GtmPGhDo6YjMrvKyXs2YKS0BdbgbZzH9lwAa
	WxW6nFE5UB9QQbKoxOOB7kAagZlBcWtD9nb9+dqucY8EVxK5HlX2SEsoiqJ/AfbPX7FCoVDLylIK+
	hYVAxgw6/63k3c8sxW7AIFhkL0JtxXQJwtjlzBVzmnkYYB5Z9YTaqGONCWcX7EreSuNDuEvHzuUSO
	k6r2x6v+NxW59uiAB4zyHKTPP7LfXS6jJeJ0B4mxQAjSRhDu1DGXjDGeSRvrh3sVllyDjQ5SxGNKw
	mLjB4xbu3tH8SY3nopRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCIDw-0008Hg-LR; Thu, 12 Mar 2020 07:25:44 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCIDm-0008GZ-Vo
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 07:25:37 +0000
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud9.xs4all.net with ESMTPA
 id CIDNjX37o9Im2CIDQjieLY; Thu, 12 Mar 2020 08:25:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1583997921; bh=mQr4GeLcmudw1gcKjKPAz1IuVLY4RaQ2nqWH7wqy+jw=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=J1ti6MHRpdDak2qI1ISVFWbNX/Eqk8v5HE0MuKtdT/18vdtgVe8KxFi6lCp6EdztZ
 7xL6+6t2eupX1X9SZgNXtHPz6UAXzMVxtdq35evePdisQZ0+Y6iPdgdTiTHqheMeiQ
 MniCy3+cYl0PytP94YPxVEqMCjgbKXQV9tqiij/a/TkxOxrjFeLYQSFLj/EEGUr0Nn
 r25LlAdnendD0rs3I7qnrPXfKoe9oSTm/Pb5OTMVCPAqmJ3mjB7DQouQpyRcovcdyK
 Zin/io82gE0kW1IQnH4/Uuc4V2nYsqcsrmILIQQz4dUA869j+iUndTXI4JsQyg52cH
 3cQHKyoh9Xk+Q==
Subject: Re: [PATCH v2 19/22] media: docs: move user-facing docs to the admin
 guide
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <cover.1583847556.git.mchehab+huawei@kernel.org>
 <05c08367b2c6a5b3f8f29499093d34b1f0d864fe.1583847557.git.mchehab+huawei@kernel.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <ec753b2f-955d-fb8c-2cf6-9a26c30a57d0@xs4all.nl>
Date: Thu, 12 Mar 2020 08:25:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <05c08367b2c6a5b3f8f29499093d34b1f0d864fe.1583847557.git.mchehab+huawei@kernel.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfPeQb6Gl82DsP63bTAkbA0dckPqu5XZD0bRXQh7WyweZShLnApqbc6Kmta6Dz/FXo0jepjepVtp54e9tV17baAmZH8XNNx0AC9x9y0H5xPeS8TWdweK1
 vOg1rjf7ek0WywQzmv5/gMJupK32K7deLroJmkkkkeYUKclOO22+VaLj+1C0J9S6iwPBSRcItauCYIEA86W9//RGOxfQHnglxP6CbKiODlmmEai4wnU7pCoW
 9joPOuP2nMzieB0ZaVtdRHysTwbmJ0PWQI3P7IqoeenjJ2aG2RrBPpSSSMC1R95k7wpNmRIWNRuPM3MJoIgmMbl4dQoJrOnhc73wOOMG4CDjJ5OvNsrLHr+g
 skgB/VK/I1CJU0Zj0CWvnm/wLjVyBZa5ipOkt/3Uov+6hOTMMuft+v8Hibo71AFp3a431I9Ljb7rF193nY31Sv/yDT5mFjVOTBEL6EUZ9rwl+as6iCIztNRY
 rTuTN5ualcPabXhFkgbq62Zz5wqFqfbb/g+e1WnIKhGtx08xjIxmyDWrVMSO6BI4U59tyCyMJ45WJaO0Xkveow4rOCH6WPCXMXi7VGe3+XH8YzFxlLEaDIOh
 YDMdbjutw8KGEte1hWst83KMCwzfHGTTUhg0/jMblQvTWgq9n0RL9KVciAIk0VRr1kK47CFROFkmpIXuk4R+j4izQ8wMnhcWou6WT3YDCBFKEcGaUjz9Dzir
 Eu2XIZ8v+VzfkNCwmlsKMS6D2xwI+xLAXgBS8Oyhtfl6h9GZ8bWkKkYXmu/mIJbd0e/9RJdd0VMNvIJB3hSUzV02/xFBy3BcJ41ReZxkvODmI2fZDJvFkWfn
 VFZz7JC5MeddpJzXQAyA7367IslgEYTl66DP8KDgqDBoAK5bk8dIS/iw7nnqZzkMon9KMMoiJEfhG4kk/tY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_002535_190905_D11C8A1E 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.26 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>,
 Andy Walls <awalls@md.metrocast.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonathan Corbet <corbet@lwn.net>, Alex Shi <alex.shi@linux.alibaba.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Todor Tomov <todor.too@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Harry Wei <harryxiyou@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Antoine Jacquet <royale@zerezo.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/10/20 2:43 PM, Mauro Carvalho Chehab wrote:
> Most of the driver-specific documentation is meant to help
> users of the media subsystem.
> 
> Move them to the admin-guide.
> 
> It should be noticed, however, that several of those files
> are outdated and will require further work in order to make
> them useful again.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/admin-guide/index.rst           |   1 +
>  .../admin-guide/kernel-parameters.txt         |   4 +-
>  .../media}/au0828-cardlist.rst                |   0
>  .../media}/avermedia.rst                      |   0
>  .../media}/bt8xx.rst                          |   8 +-
>  .../media}/bttv-cardlist.rst                  |   0
>  .../media}/bttv.rst                           |   0
>  .../media}/cafe_ccic.rst                      |   0
>  .../media}/cardlist.rst                       |   0
>  .../media}/cards.rst                          |   0
>  .../dvb-drivers => admin-guide/media}/ci.rst  |   0
>  .../media}/cpia2.rst                          |   0
>  .../media}/cx23885-cardlist.rst               |   0
>  .../media}/cx88-cardlist.rst                  |   0
>  .../media}/cx88.rst                           |   0
>  .../media}/davinci-vpbe.rst                   |   0
>  .../media}/em28xx-cardlist.rst                |   0
>  .../dvb-drivers => admin-guide/media}/faq.rst |   0
>  .../media}/fimc.rst                           |   0
>  .../media}/gspca-cardlist.rst                 |   0
>  .../v4l-drivers => admin-guide/media}/imx.rst |   0
>  .../media}/imx7.rst                           |   0
>  Documentation/admin-guide/media/index.rst     | 104 ++++++++++++++++++
>  .../media}/intro.rst                          |   0
>  .../media}/ipu3.rst                           |   0
>  .../media}/ipu3_rcb.svg                       |   0
>  .../media}/ivtv-cardlist.rst                  |   0
>  .../media}/ivtv.rst                           |   0
>  .../media}/lmedm04.rst                        |   0
>  .../media}/meye.rst                           |   0
>  .../media}/omap3isp.rst                       |   0
>  .../media}/omap4_camera.rst                   |   0
>  .../media}/opera-firmware.rst                 |   0
>  .../media}/philips.rst                        |   0
>  .../media}/pulse8-cec.rst                     |   0
>  .../media}/qcom_camss.rst                     |   0
>  .../media}/qcom_camss_8x96_graph.dot          |   0
>  .../media}/qcom_camss_graph.dot               |   0
>  .../media}/rcar-fdp1.rst                      |   0
>  .../media}/saa7134-cardlist.rst               |   0
>  .../media}/saa7134.rst                        |   0
>  .../media}/saa7164-cardlist.rst               |   0
>  .../media}/si470x.rst                         |   0
>  .../media}/si4713.rst                         |   0
>  .../media}/si476x.rst                         |   0
>  .../media}/technisat.rst                      |   0
>  .../media}/tm6000-cardlist.rst                |   0
>  .../media}/ttusb-dec.rst                      |   0
>  .../media}/tuner-cardlist.rst                 |   0
>  .../media}/udev.rst                           |   0
>  .../media}/usbvision-cardlist.rst             |   0
>  .../media}/v4l-with-ir.rst                    |   0
>  .../media}/vimc.dot                           |   0
>  .../media}/vimc.rst                           |   0
>  .../media}/vivid.rst                          |   0
>  .../media}/zr364xx.rst                        |   0
>  Documentation/media/cec-drivers/index.rst     |  34 ------
>  Documentation/media/dvb-drivers/index.rst     |  11 --
>  Documentation/media/index.rst                 |   4 +-
>  Documentation/media/v4l-drivers/index.rst     |  25 -----
>  .../zh_CN/video4linux/omap3isp.txt            |   4 +-
>  .../media/v4l/dev-sliced-vbi.rst              |   2 +-
>  .../media/v4l/ext-ctrls-codec.rst             |   2 +-
>  .../media/v4l/ext-ctrls-image-process.rst     |   2 +-
>  .../media/v4l/pixfmt-reserved.rst             |   2 +-
>  MAINTAINERS                                   |  22 ++--
>  drivers/media/pci/bt8xx/Kconfig               |   2 +-
>  drivers/media/pci/meye/Kconfig                |   2 +-
>  drivers/media/radio/si470x/Kconfig            |   2 +-
>  drivers/media/usb/dvb-usb-v2/lmedm04.c        |   2 +-
>  drivers/media/usb/gspca/Kconfig               |   2 +-
>  drivers/media/usb/zr364xx/Kconfig             |   2 +-
>  72 files changed, 136 insertions(+), 101 deletions(-)
>  rename Documentation/{media/v4l-drivers => admin-guide/media}/au0828-cardlist.rst (100%)
>  rename Documentation/{media/dvb-drivers => admin-guide/media}/avermedia.rst (100%)
>  rename Documentation/{media/dvb-drivers => admin-guide/media}/bt8xx.rst (93%)

I would personally prefer to keep the split between v4l and dvb drivers, rather
then putting them all in the same directory.

What was the reason behind this choice?

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
