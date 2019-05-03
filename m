Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A51A12812
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 08:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNVg9PfZ5uBCVadziP2E+bcHkOFV9C/c9nMTbTMI4qE=; b=uNUuVhkE5s57ug
	/x3W9eMSOrFg/+oJp4+1W2ybNvmt/0GOb7GMvyoccI5rVXhyGz6qiZYi8+n1ExuEYoXsDcu7sK1zd
	kOHhZYJToIsU3Zx+Jf0q5kWuqPJ60c7GR6Yy+tu7DATGAmAC0xmvUpvkYFFj5CQ0oqya20yp668I3
	2UyctxnocMGm6UakQt0Vq13ICBADA2nVhEOLIBso5wPH2n/fgX82hwXSFGecxJRJlqYoFaVnUwXvs
	g4+fLRV7WFnvZlJ87eyiDpzf++ZgwW2jb7nWM4FM+/KQCoUIadOIzGGh/tMaCP79t/wk5ggr0cj71
	DxH6Jo2DQx55J1nSsdPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMS4f-0002cB-2u; Fri, 03 May 2019 06:53:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMS4X-0002be-RP
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 06:53:31 +0000
Received: by mail-pg1-x544.google.com with SMTP id e6so2274340pgc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 23:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mrZORLKQrD0+dA9tzmgTZsIYZ2E2nmGSbLpObi4k/no=;
 b=b5GBuW8j0AOo084lBENajV86iGsi8yHS3gw33fr5OLy+n/GiN3k4Fa3b5zQHJoRscd
 E/TcH04HbvzS5TqfMxXoiGJZOuIwjeiKNRagV2fdLFVJp8Py8Awf0ZNPn0DODo2LsbrO
 01SdIHQ1qoo5FlRlnw5IaO+rYXkIbt2aVU9DLs6l1T1ba3iTac1F0wmGAxSZQ8NPlQKE
 T+RfCX+fX6fjrZ+EY/phUmSkzV1YOSWQRqA+7+I7QOWqZNvEtePl4POhlMLW/aZkp+dk
 FzP7REC1ZikawPLuvyOtkA96qxN4jYxOpgRA0W+iNPcZ7j/3aMfWy+zluHST0m02Jvg4
 T5OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mrZORLKQrD0+dA9tzmgTZsIYZ2E2nmGSbLpObi4k/no=;
 b=R5It2zUOCib5Nu/BgOZ+10k6Dl2U77UJf0IqPEsbCLKtoVm+eUbJpI4NFy9/7F8WST
 ss+iOyP53T2EYlW10a2k/hNiP9pHBFA2i2o5SoL9jTc4luoQmXi9CD5RF9Yh0XoG1Eqs
 0U4nHjKLoDSHqL+gDo/lchzexetm0BAJVHzKD+TKkYXUwsOZnekI4Dq/VjDRJhle3C0k
 LLeMFVeXYrFh24RAYrncpxYX0YO+cVHYrjCfhQEQy9h8XWmmNCly1oxrN9HG1WByx8Sh
 F7KZdFMkccvxAJANXuuajdu45OEM4sv/AeJTkYj7T17UlzsVaUpuz4oeru+LFcnLke7A
 RdZA==
X-Gm-Message-State: APjAAAWUvNdNl43n0L5wsfa+IyJaD9uYHmHcUqMUBrV1cgiiFq4sY/WA
 qdVsJEVVGmaaAUzXlhj8A5kLhA==
X-Google-Smtp-Source: APXvYqy4Bp3FMEGX6Ci1dt3HcOdM4s0sFs1cVaN1t6Nuk43F5Ep6L09TGrGiIjjKOrxmQjmvzfasew==
X-Received: by 2002:a62:448d:: with SMTP id m13mr9024302pfi.182.1556866408984; 
 Thu, 02 May 2019 23:53:28 -0700 (PDT)
Received: from localhost ([171.61.121.242])
 by smtp.gmail.com with ESMTPSA id s85sm2357007pfa.23.2019.05.02.23.53.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 23:53:28 -0700 (PDT)
Date: Fri, 3 May 2019 12:23:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8mq: Add cpu speed grading and all
 OPPs
Message-ID: <20190503065326.cdammgpkykikencu@vireshk-i7>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
 <59286bf8fcdca332df4004c3d141727f0188ad6f.1556836868.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59286bf8fcdca332df4004c3d141727f0188ad6f.1556836868.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_235329_884815_23712BF6 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [171.61.121.242 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02-05-19, 22:44, Leonard Crestez wrote:
> Add nvmem-cells reference to cpu and fill the OPP table with all known
> OPPs.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
