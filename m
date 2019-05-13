Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9A91BF84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 00:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6eryPqVsbM5F0rLOqYhR5snSFSk7poRBVwjhPn31QY=; b=BFQM0gg5OfzdOa
	93p6HeSfp1iFe0+YLdD5Feo9lNpL3Z3VSvQASZidOBdHZQYQm3kuMgCkQ9gv/3aCz0fLrfjE1HTrN
	chyeKo+h/uPsvrXu+ZSQxWBQZ5H58oKnaM/uDq3Njb2tQUFr21cPkwFsqdvJK3W1c04vIuIeVJCth
	4L+Suh8jpoUgAvzMt2FbQuArCMnDkXqUtMvGJD9GJWeV7mYBi3LZ6IKagATVvzNK1LcC+nnc9tK0h
	Y/gudlkfE+SXKGg8Oo2HFttbWlw4AJjIHEu93IxaVP8GWMhJ82KT+EIEjNLqiTcqSS4LQuscaRkRq
	fgnGv62HhqF9iOSUoQ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJVz-0003oc-RX; Mon, 13 May 2019 22:33:47 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJVt-0003oI-8d
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 22:33:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id i21so7479225pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 15:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NvQvgfEGSLgUqO5Q9NdIyP63IIoIQn87HFDmXmj0MKc=;
 b=ZvfH0arew0ocZDDdoYxHlTfwpsvBkycRrF4g9K2oR08xEh1FrVl57VdAJJPkME+NMp
 CnltQ+dNfL78uYuw773bZ1MdSrn3fv/MV6zbZvj3N9ahhVZG/VdCLzStnA6T3j4NBURi
 BIYZ6UKCrpcJOGmOeXM4aLeuR6egOfZ7e72aNGaARNzGiXP3tC0ieJTVKF0NR3DWo/C8
 4NKcza9dATpUs139NFOpiFCb2D1Y3A4s4x+7A3PuetpM8acbqIHEUNhTSXiGjdefUBvA
 QjLPBp4VWIXBKUObrYthE/FqVekPSDll7Ppwg5t08ouGxRZlZ2q0WCXL6Ri/j5GYkrPR
 6FUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NvQvgfEGSLgUqO5Q9NdIyP63IIoIQn87HFDmXmj0MKc=;
 b=HhyPmJVa6xVfryI/6Gz1sdGo+JzuYI7Yr8zh+MWkNDVM/zYQ7llahJjDK95a2V5IM+
 F74gjPoknrI2AsLt2r1Y8518K3XRlMbLWUXMhJjYes10QL5rV7sMciuyneEV/T0QIAhd
 LtwZh3LgzDs+vCeK4cn0/MnROitI4Eio/oCVYGMiXVduF9/HY5VkdB+QZ6K1z5O75Bpk
 AN5Xja6nToDmhPJVfEz3zsXuDChGl2HABAQWjv4PQSfsWoYSpp3II2YwnVNTG267mepN
 DWy0mrHjaVzrCj+lePoA6Z8k51R1V0ljETK7ASyf+98h8QQBkwgwtal3m3m8Pib7Z2ZM
 XFaw==
X-Gm-Message-State: APjAAAXteCe7vgeyGZJJqeXbtTMSZ/lFCV+oI5VqjksRuchx543WAD+W
 AVbKoikrF6L1eg1DMzWeYDqZTg==
X-Google-Smtp-Source: APXvYqxPHzPRhlNAh7fHXKNAPmAkVKGQ4nrfmtUr2JNvkogfwiYQFup8yN7ZBuVfBdEZjih2EbKnLg==
X-Received: by 2002:a63:7552:: with SMTP id f18mr32376239pgn.234.1557786820042; 
 Mon, 13 May 2019 15:33:40 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q20sm24595819pgq.66.2019.05.13.15.33.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 15:33:39 -0700 (PDT)
Date: Mon, 13 May 2019 16:33:37 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 29/30] coresight: acpi: Support for AMBA components
Message-ID: <20190513223337.GG16162@xps15>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
 <1557226378-10131-30-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557226378-10131-30-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_153341_329629_E844B890 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:52:56AM +0100, Suzuki K Poulose wrote:
> All AMBA devices are handled via ACPI AMBA scan notifier
> infrastructure. The platform devices get the ACPI id
> added to their driver.
> 
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/acpi/acpi_amba.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/acpi/acpi_amba.c b/drivers/acpi/acpi_amba.c
> index 7f77c07..eef5a69 100644
> --- a/drivers/acpi/acpi_amba.c
> +++ b/drivers/acpi/acpi_amba.c
> @@ -24,6 +24,15 @@
>  
>  static const struct acpi_device_id amba_id_list[] = {
>  	{"ARMH0061", 0}, /* PL061 GPIO Device */
> +	{"ARMHC500", 0}, /* ARM CoreSight ETM4x */
> +	{"ARMHC501", 0}, /* ARM CoreSight ETR */
> +	{"ARMHC502", 0}, /* ARM CoreSight STM */
> +	{"ARMHC503", 0}, /* ARM CoreSight Debug */
> +	{"ARMHC979", 0}, /* ARM CoreSight TPIU */
> +	{"ARMHC97C", 0}, /* ARM CoreSight SoC-400 TMC, SoC-600 ETF/ETB */
> +	{"ARMHC98D", 0}, /* ARM CoreSight Dynamic Replicator */
> +	{"ARMHC9CA", 0}, /* ARM CoreSight CATU */
> +	{"ARMHC9FF", 0}, /* ARM CoreSight Funnel */
>  	{"", 0},

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  };
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
