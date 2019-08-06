Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD3382BDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOTqSkiZKoSMs1oqJd4EkhzpMiAXchxf9kPUx9L4I8o=; b=B9Eumq8bZsv8/U
	sQrIcBUK0lpGSa1Z7pM1zmMF3zcW/r2tg8d6O1jA1BcvzzAFtTRrzv1co2+fSRxgA16an6ei4XyjE
	CNBT7J19FWmh8g5l46OwQjoXlZg2NxYZPgw7vD/5J1RxO/7yg9p8dcbq5G1wAS/XiGtP1+RH5NCfk
	kvH3ThwEv+Y8xzcqhjR5FC37ltqnaL39OuIsfFWvY76wEXns5uMsDC7jOTTjWJdg9Td+FxcwUEHIB
	MlY5OGddrl0XnitsQ+Cw3FOVV8L6NaGzCSE+bm4iFfRDDaVKy7qGCBsQCIrXwgpffSle58NOHbmJr
	95OxEbIfYhvrTJxdB4ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hutAD-0008Om-H9; Tue, 06 Aug 2019 06:41:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hutA3-0008O6-Oe
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 06:41:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id f17so36954337pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 23:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O7Wxe/wopuDLr6j5LeIpmGJxa41bzUArxht2aFk5QSM=;
 b=PQB59KqEEQ6y0YFrHhLO6+txcqFbBih2qQcVtibs659NMIAQoA/YBANqsk+eX0SCuW
 sbY5s48PsWRf99yFceRWzXQadQVb8U2KdQ8q5N/UC+OS70N9ZV3HvwGvO+3M/Xch9BlK
 anE08yqAnkcZ18O26SB/+Gjcpq4K06YY9aZnWnTdy+Wa0fG6zxZ9XbgvfBHtwfHLtab3
 jt8HleZQrIUDKrcyd0EKiknFIxmyoeclUXM7WGS+onyhFtjlcA3xbvW/hYQGqUM1DSzg
 4NZvoLpj01Kft8IYBqifjDaNJ0jIAe5TExtcC+IIoWzOyo6kpNrriZw+LRDwaIOTZ9AJ
 +UXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O7Wxe/wopuDLr6j5LeIpmGJxa41bzUArxht2aFk5QSM=;
 b=H40SfnHuBUkOmdFkVF2cCi9lgsBLoQhwyTtD8y6CK5HtqiOCoCz9xMArcixOnKSrXv
 iLNPxOAPaab8f06szXoC6LLKYDxSy3LoMky2hCHutjvJeCirYDevm08Z2+5p4euBWYQG
 CtU/utx5tq/ERhsfbhplDG0j/oEECLeCuoubXMOr9+cn2ZPZTlHqGMOKOuO2rfJnqCIT
 vxSaEuEOTETbKFySFh8YSdK+cQkmsSv2AXotTtOBM13aJVpJpAbmrTKPoHwOoZMrOYkO
 nKsRxvMnml7Yxw163Q2zjEfq20dH2oJp4w8ijnu8g5XyDLVwB2/tRTh0ou8SMnuJjqBT
 5PVQ==
X-Gm-Message-State: APjAAAW5Ath8ZVJkX4r1uTpipkVuXj76XbV/v5xyR3MXfnWnPZdJFhWT
 MRhFGzJLuH6lNxv5blPJKznaRVE5e4RrTVwm+3w=
X-Google-Smtp-Source: APXvYqwNrBeCBFk00MAwOwazzhjYBhn+KfLDMNZ9dnhN85lTl19ENdSbslLn8ga+DxdlH5db2IF4JBnKiLNcySs6fRY=
X-Received: by 2002:a63:e54f:: with SMTP id z15mr1658530pgj.4.1565073690207;
 Mon, 05 Aug 2019 23:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
In-Reply-To: <20190805233505.21167-5-slongerbeam@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 6 Aug 2019 09:41:18 +0300
Message-ID: <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Steve Longerbeam <slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_234131_828777_7F4F9323 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Len Brown <lenb@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 2:37 AM Steve Longerbeam <slongerbeam@gmail.com> wrote:
>
> There is nothing v4l2-specific about v4l2_fwnode_{parse|put}_link().
> Make these functions more generally available by moving them to driver
> base, with the appropriate name changes to the functions and struct.
>
> In the process embed a 'struct fwnode_endpoint' in 'struct fwnode_link'
> for both sides of the link, and make use of fwnode_graph_parse_endpoint()
> to fully parse both endpoints. Rename members local_node and
> remote_node to more descriptive local_port_parent and
> remote_port_parent.
>

May I ask if it's going to be used outside of v4l2?
Any user in mind?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
