Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412D71ABEB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKTgwVItqMy0M+0Ll85pa/VwqKgcAql+YkQqFsmk5tQ=; b=CB6yny6V7mA6U9
	6osXIUBx4Egq2w2j1KZqCUpvNBivLc6lvyPNQpJo4s6ZKa2M05WUQ5KSwPbD1wF3QhlgChSIlq3Wa
	t2I+nBnOjm2XbCnib8nxYji6tg1BoU/yi1E3pLt0SF/QcOpplywqRuk2wjd22sOSZlC7HqdHIrTAR
	PgSmaqkusOz0Srwr2g1loPFOw/P5MeoQ9MGpBRS+OFEkZrBgqegdYs6Ppr1dPDP7A8wdyRaFWLC3p
	5UCZk+ZZBN9WHM5fhO9/8jqRAzxZ4XYmhLpr9UHUQrE3UceTGxWeuPKSluFnzmTIbFjW6gmcGRtIS
	HVslOdsNaVUoYCRFGvzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2Kg-0005Zb-F3; Thu, 16 Apr 2020 11:05:22 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2KV-0005Z9-Vo
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:05:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id r17so5273987lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mq0IZ8zEcbCCQQbNmBdNZ1B9G7vx5bszdJPjKjg1acc=;
 b=Ooe9pNs6OMtwS56lERk14i/77dX0qJ1nPw9AqmvZtP6fa2sVu9yGF9EzdgmN0WHwNr
 NPrhP5+1yn+9P1m8alerLCgWM9J5WEK68hSgUJIzid1WNPqYfGkB2lpfNm3RrQk0GpAC
 0qzI2pMdoN8nYkpWzNK1Stgq27qMZUPCScgS/MQLfjJOOOVgJTjlzMc6JidPzGjksFG/
 p24CgzFGQJf+um6Old5jGXJulMD+TgUMPghQ//fS8YBa4btu3r1LhGo4WMYeuVB1JoGl
 rlHw4t3sffGe9ujMgH9h1rpACRlwqWyC+zpjWpK19CJNG7TK4neaqZlJWGoXDrvnI+fK
 eLFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mq0IZ8zEcbCCQQbNmBdNZ1B9G7vx5bszdJPjKjg1acc=;
 b=bzoShGK8vedu0rgyuwis2kCbRDjub0PtVgqQ+ejmiVbrmM5BLRV2QQGjQZ39SaWT0Y
 XxHGYpzIH96wwQYjwN76Gg8eTGjhi5iC3DP1p+8RlDbeVli3h6AgvY6HxLdWdcYekwrF
 idWaXIePBtxMBa5CG0TN42M2IeprpyPjroHhdN6CQoGBVgXPSvSA9JsvdgIvqRaVMAV5
 nOZ4qZtMkhG8s0gTvzPOtV1m5qLjDE7ORAWTZ9Uj/wkHu2Aa0hKg7HcNrzU6CzYwef+v
 5SuebB1yH+Lj9QsoQoSuPTNK6cOGbsNvmFK7ADWnrwPh9xvvetRAEGS6wunSqzkAswJa
 fQrw==
X-Gm-Message-State: AGi0PuYJE193DoGd5egoCZ3hRjz170ul7T2EwY/2cHXAZhAfvoqh4xFz
 9FSZPMD+8ssDJTiSAnBO7vD9F8GCj+UO+QfaQndK9Ny5
X-Google-Smtp-Source: APiQypI+oqyGBYRLnxRTNd8S2eiDvU1l/a0xmlqCHR48xkW02zvUHfuwXVluWhVnuqgahxFFKfIORHvPlGC8iMw+6HM=
X-Received: by 2002:ac2:4a9d:: with SMTP id l29mr5432162lfp.4.1587035109902;
 Thu, 16 Apr 2020 04:05:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200409222014.31828-1-robh@kernel.org>
In-Reply-To: <20200409222014.31828-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 13:04:59 +0200
Message-ID: <CACRpkdamo5E-urJ2gMUsoOQpzWOpOQG4t+YaVKAP4Xb856EBvw@mail.gmail.com>
Subject: Re: [PATCH] ARM: versatile: Drop mapping IB2 module registers
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_040512_036705_2C48CEA2 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 12:20 AM Rob Herring <robh@kernel.org> wrote:

> As of commit 153969fd952d ("ARM: versatile: Drop CLCD platform data"),
> the IB2 module is not accessed in the platform code, so let's remove
> mapping it.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
