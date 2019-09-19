Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B102B7893
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 13:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VnNDP/PNbJbtXC8p2RDJ1k/6ooCxir6j36HrH2DbP0=; b=fd76C3vm+o7Uz/
	XU7deBhVlYMyb0sYk/Y2NKi7BbKjePCRfB9sosrOthc63Wdyu22H2X2yFRXYIB3FmqpRSretZhZjD
	JsUjWriU0N2VnmTNZwhRXiNcs/TMFeAiUD+mQ0uNqmg1gpk2DEyWIiQ77yzYe/zgyINgCR8qFPWjV
	lhq/F6HfTTcjduw6G+uDZqc25LG3apotLx6ADx7T+IEUHxEwfXDrb0vNTV1qf8PQBZNy+94+Y61JK
	54STJRjOc+Wps+wYvknAqBzQ39/bbTGZJqA/AQ1cobpY3zrhJCz+PfoswYwxRjTYdj4RhvsTKyOvT
	tP19l6dRKImQjhl6PbaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAulE-0006F4-2V; Thu, 19 Sep 2019 11:38:08 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAuky-0006EW-OR
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 11:37:54 +0000
Received: by mail-lj1-x241.google.com with SMTP id q64so3192143ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 04:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WfwOF61OoR8M1e7Qa+ZZMY90GfOvjcgebJlSOMqBsC4=;
 b=tmRUxVccdHoZq6Alk7EDBGRJpqo7ps/lgBfHnrJDWLPzw3T14K2tlvbdO7/V1Xj+by
 X2O61E9xCs+4s5w+xOFaTY0XG52MIPGZ97lDfuwNbeq8KGuGHibjkgjq+KJ7vAA/J+3+
 Lwav++NhEBRlYPOQRN879gdJ6V8Oraakm6rPEVhr4HPWixCF/6y8s3iJcr+67KaBnvjl
 OhsyF7nEdI95+w0AW8qDdZwyX6Ckte34WoeIzgq/kW0lC8BSJvhMuNsC2GguDwD+mjtq
 ke3R7EMTP1RryZmqKPgPAkQOrRk7+eSafwLdrGeTlyewV/fxm/ul4OgvJn/F76Yj/rCj
 ixiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WfwOF61OoR8M1e7Qa+ZZMY90GfOvjcgebJlSOMqBsC4=;
 b=BXDJHCgSZfRVff+ZLRkJlkHDprHah1W1u9z6tkgA4ZY8IszAKw+f4hIVvrK1Kwzn/H
 dz2a6lOlFuIQGdMVWu1Zmk1fHJtEZDXTmKRez+7dihNjcQcbjEKUiCfVQ163dHvze9ps
 mBIjXnLuBlx84UloMQkuANhfsPTZFR3SwSMj+BuVSZNitxUhtpzsV1tpN+EwYfj/BpRM
 T3KzhpxhNY9opgUkHDdaF9Hk8pLyewxDiixzH/XylAyEpciGg2jH6ZxG60Pl7BrtKY0g
 4ouJ6eaIyqX26JMrXfTKeMe1InV05jkd6ehwB3UGG4YPZCIahFPt87eyB+rk9G0djE9w
 ReiA==
X-Gm-Message-State: APjAAAU4VO3E1XfvMEYXvOO6W1IqrmqeVqYfdjCeb+mq6PYwdhZtEOcR
 zsYoF5V8GPcfr4VVv6pVFVqw1l8GTia8IhVydb0=
X-Google-Smtp-Source: APXvYqynVPBOnd/PXWX66hg1JF9lfC5l9S4O/FDzyttTjdhHtCiVN8anWr3f+Cmi+6Yv9m/24fve30Dlmgd04RambWY=
X-Received: by 2002:a2e:8184:: with SMTP id e4mr5231120ljg.240.1568893070642; 
 Thu, 19 Sep 2019 04:37:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190919102319.23368-1-philipp.puschmann@emlix.com>
 <20190919104526.29851-1-philipp.puschmann@emlix.com>
 <20190919104526.29851-2-philipp.puschmann@emlix.com>
In-Reply-To: <20190919104526.29851-2-philipp.puschmann@emlix.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 19 Sep 2019 08:37:50 -0300
Message-ID: <CAOMZO5BNvejzMxhZiaJ36E5XES=uVNn_G-+fXQfStzy5W+YbsA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dmaengine: imx-sdma: fix buffer ownership
To: Philipp Puschmann <philipp.puschmann@emlix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_043752_797238_DAFB236C 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fugang Duan <fugang.duan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, dmaengine@vger.kernel.or,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

On Thu, Sep 19, 2019 at 7:45 AM Philipp Puschmann
<philipp.puschmann@emlix.com> wrote:
>
> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the
> buffer, when 0 ARM owns it. When processing the buffers in
> sdma_update_channel_loop the ownership of the currently processed
> buffer was set to SDMA again before running the callback function of
> the buffer and while the sdma script may be running in parallel. So
> there was the possibility to get the buffer overwritten by SDMA before
> it has been processed by kernel leading to kind of random errors in the
> upper layers, e.g. bluetooth.
>
> Fixes: broken since start

The Fixes tag requires a commit ID like this:

Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")

Same applies to the other patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
