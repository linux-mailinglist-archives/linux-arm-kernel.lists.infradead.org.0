Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEB848FB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 21:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/zE0Uey8j8T/eFnBySp+R0Lv47xqY5UGXGFlOtFdpE=; b=RlO9hxAkn8XLsZ
	3HFH3XYmdwpIC8ABW3YtzHD3jgJ0i4VucPvG6Xujcg0R3wpO6Nf6JmnGAusdUDvyFEmRJoVQzWRmd
	qSeoDA1Pc/T4TVKBiwdU7fYLydlY10mfU1U12L7N4wUDLwRWRVEaroFqdQvqBZROwXElG5SBfMgJ+
	HPAmoGmmGZU1Sev2c7KqQU8dnLlrh8XkpwTktPivsMaDXJ0zxLbjeDnqte4BevnhdDCvPaDtObAZE
	GiO04Dqb7iEPrKXIEPD94VFEkbP51o+zs/2YFONN0yr4N8sFKT1ju9pGr5VvbZBJFSesD9m7vFMMg
	zUOtOjUTDc0Ql4hwA6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxUb-0003At-8H; Mon, 17 Jun 2019 19:40:37 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxUP-0003AF-QH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 19:40:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id h6so24018609ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 12:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j6WuASPE2mni0guIUkkRtD/52gMjLqr2ZEpRsUR4sK0=;
 b=aLeZkiIRZAsbC3vwrVPw8k/YEEnk6TMdBILNooAcrZfEK6urgpMJ5u9Eq8s1bOnb/Y
 k6nDVLTOgLip52Zhmj14Q+anQTe4dnae727Mc/ilZsSsARO8WHN9SELDR519JPcAfcnO
 LX/mOrjBmPgT3y7N+9sz63DOb1W8CgG5s5ffctFFrs53ndUU641/vruIyiJb7CK5Kn/j
 HeolrvIBNoB0KVQSbFUnXQtVgK17QzwZ70tcmuUBHWfZfQgTuUHSuGDD/slrq2V+Rynf
 PGM/Tw+k9FHiub/A1UweRNgdGJpYR7Njjw6grqwgS53CJTzXG4qcdQnNm0KeXDLN1yaL
 jUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j6WuASPE2mni0guIUkkRtD/52gMjLqr2ZEpRsUR4sK0=;
 b=RxnVUtQh6F5WiOsJzsyL6w8jckTBfYxn44BPUmHQa4j6GChvtL5pYsILvgHEsEgIvV
 UzEwVxlFZqgSo67QkwPRkbnZQTP8hJi3kpC5Zc4KppwCGoNfy5TznyZv2CGp69Y5aKdV
 o83r7edIwNmT4cfZ72+5fUzZ40JxGM7BwVDPfMchdbhF6psOLUnvCooPEpQKjht4thSe
 ePhpq+quVHImvrcgX7tBwXZ47N/mzoSX289d7bTzIYoyuRAvTRuWeACCI+3CjP0Hn2Yz
 OQKBIh7WfRUc4YWJR/3J0F0SpQ0P+J6vxETY/msXh3zXSs/08OLpbIjRgZhA0Cw7Pxaf
 iECg==
X-Gm-Message-State: APjAAAXYZQu/dLyIsIvz5g41cOwOtHPdThapQZdxp8tT5YCrwx/r+Soe
 ukI/NtuOJMKnlvyg7iTEPjP3wN7r3yALXf+lc1+eMQ==
X-Google-Smtp-Source: APXvYqxr938YdTE2N+B9Fe98i+hpyur/6wP1TpcTp3sfwG4ulGslieAud5K48nc0OVEFq6C9kYcV0D+/j2dEXFIDLSA=
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr12123502ioq.50.1560800424948; 
 Mon, 17 Jun 2019 12:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190617125908.1674177-1-arnd@arndb.de>
In-Reply-To: <20190617125908.1674177-1-arnd@arndb.de>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 17 Jun 2019 13:40:14 -0600
Message-ID: <CANLsYkyraS+1QACrSVMak=CUxtupHcW6=5dODNn3SeyUvqhsMw@mail.gmail.com>
Subject: Re: [PATCH] coresight: platform: add OF/APCI dependency
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_124025_848435_E250E892 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 06:59, Arnd Bergmann <arnd@arndb.de> wrote:
>
> When neither CONFIG_OF nor CONFIG_ACPI are set, we get a harmless
> build warning:
>
> drivers/hwtracing/coresight/coresight-platform.c:26:12: error: unused function 'coresight_alloc_conns'
>       [-Werror,-Wunused-function]
> static int coresight_alloc_conns(struct device *dev,
>            ^
> drivers/hwtracing/coresight/coresight-platform.c:46:1: error: unused function 'coresight_find_device_by_fwnode'
>       [-Werror,-Wunused-function]
> coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
>
> As the code is useless in that configuration anyway, just add
> a Kconfig dependency that only allows building when at least
> one of the two is set.
>
> This should not hinder compile-testing, as CONFIG_OF can be
> enabled on any architecture.
>
> Fixes: ac0e232c12f0 ("coresight: platform: Use fwnode handle for device search")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/hwtracing/coresight/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
> index 5487d4a1abc2..14638db4991d 100644
> --- a/drivers/hwtracing/coresight/Kconfig
> +++ b/drivers/hwtracing/coresight/Kconfig
> @@ -4,6 +4,7 @@
>  #
>  menuconfig CORESIGHT
>         bool "CoreSight Tracing Support"
> +       depends on OF || ACPI

I have applied this - thanks,
Mathieu

>         select ARM_AMBA
>         select PERF_EVENTS
>         help
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
