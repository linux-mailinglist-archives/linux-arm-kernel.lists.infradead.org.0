Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793E245AE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9jYKaDLxe1WoVUyCfTdU1Rn3dBD3dzbxeOlwRUZH+I=; b=TTk7Lcuygdwcz2
	d+VNG2ZTSsSZFg9P03uAaHl2iFybI1pxW1NXq/trLpBdP6cswTkSUQxA25/QUACDL+XcDBkQo+xKr
	VsbvKhJK3nT1SiFy6NRvY/GEeU4S789Rh9hNo04kB/B+TX7OVrzBxNwQoxHJGCw40Ua19zG7QNo6q
	iBtqWdDNbQuhKrhZAxmhFhjD7FFtpR7NoWaRUwTQonMrzAt6W5n4fbyzksMmxot+icdMaA8rMSkp7
	mn26iHGp/SQFMEKaQMWFW0Ab9f7NnqqyAzBATvSOSdiyUFiHQ7ATJL6j4gZTOlAgcwXCORWfx6KVT
	95YhD+yZMSlW+8DrgHpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjly-0004lI-Mw; Fri, 14 Jun 2019 10:49:30 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjln-0004fy-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:49:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id u10so1382736lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 03:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LYKF4WL4sBRzlWXeIG5ktJQ3i0pzLiujECWp3FJ+AQ4=;
 b=DD0yPLtXKrYM73ZSPeehCW6jVoHRh1QzwZIQ27nX17YtKSKk8RX6P6k0VvakiJCfE8
 mHLBeHjltJVfZdxF92k8aVQxpx5n2Hxhbdklnz5havaxcL0X4/WJTKJimJZhxYQm75MR
 fv6862r6Eg+Y1gqgttHVlrJjqBvS/ok1MKEn6qkokAc0yPbI5c1pgKMVGvhZ/34lZoc/
 Kin9V4IHliUsOU5IxSnvWZ6nPWf5QVZP30dNq+UMNFbqmfRWJ9eylhQ62ZX6mnJwEwKi
 YKVQE2lyDwZ9jC89Lp3Kxf0hl5cpSY4FL3gBKgaj8Ih+Db6megkF0rDlGN6cPxwo/XJz
 rvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LYKF4WL4sBRzlWXeIG5ktJQ3i0pzLiujECWp3FJ+AQ4=;
 b=QW8ZBzLw9cOvSADI/bxGFb/M6xAztl2KrKY8Tdg8eRBt45hdnRVZ7dR76YG0gEOiac
 b3WHa7kKPcpyaP+kDNP61MDWYY/o3W4/4eU2rXBkw+OxkM3JJQo0rL6IxqZBtQAjQST8
 UOLIRheepjiBWIzAXbBse6idskmnGFPQ8e0R3rOpz4CqOZUKrG6gYaWpVhVPhmtG/TgC
 SEQXmQN+emb69QVDjESOD+soeJ/PvQnGur/gJ5J55EjzQcPcz2VqIPGFzHzPvEx8QaPW
 iShWCBzhmjOLCHJMx4BvmYHARHLy+MHRfGgLNGVk2PRRUlPu3tR1EcKXZFin4mrq7n9k
 PwxQ==
X-Gm-Message-State: APjAAAW6J9R2/2KEb7toenSygfl4+yzSACbxPIWAzNVfk67RgUa4tFAK
 Nn3SeIlr5Qcxk1r5PwXaUgMuVPiEpyTN5MbGuko=
X-Google-Smtp-Source: APXvYqwTEnpKubkq0ogtf1g0gteep+dXKfW1k1yY0fq2kkXTq6rxA9WEFetnbY/57YRZhyediiOM8kEZcFRSCB/1XF8=
X-Received: by 2002:a05:6512:29a:: with SMTP id
 j26mr14374337lfp.44.1560509355444; 
 Fri, 14 Jun 2019 03:49:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190614083959.37944-1-yibin.gong@nxp.com>
In-Reply-To: <20190614083959.37944-1-yibin.gong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 14 Jun 2019 07:49:18 -0300
Message-ID: <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_034920_424367_B4F5EDD3 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Sven Van Asbroeck <thesven73@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Fri, Jun 14, 2019 at 5:38 AM <yibin.gong@nxp.com> wrote:
>
> From: Robin Gong <yibin.gong@nxp.com>
>
> It is possible for an irq triggered by channel0 to be received later
> after clks are disabled once firmware loaded during sdma probe. If
> that happens then clearing them by writing to SDMA_H_INTR won't work
> and the system will hang processing infinite interrupts. Actually,
> don't need interrupt triggered on channel0 since it's pollling
> SDMA_H_STATSTOP to know channel0 done rather than interrupt in
> current code, just clear BD_INTR to disable channel0 interrupt to
> avoid the above case.
>
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> Reported-by: Sven Van Asbroeck <thesven73@gmail.com>

According to the original report from Sven the issue started to happen
on 5.0, so it would be good to add a Fixes tag and Cc stable so that
this fix could be backported to 5.0/5.1 stable trees.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
