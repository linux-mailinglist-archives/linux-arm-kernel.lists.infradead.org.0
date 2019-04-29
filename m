Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75617DC73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEjI13Wzchr4oz25krgNGN7h2RV6NSBmZWqjx0XItkw=; b=DQ/IJYOfxYBRIa
	yOxJ+yh7P31lZZk/jdJB3flYyJe/ln3lI08lvW74HAMcu2924y2IeYEqEQkKoZPCvYqHhrLKepiT+
	5qzYQHb2MbOMsCinSF3mYjeHI3e4yWXKODwmORUMOmlsOHjMkbGRETKI0QIQn4/GAv6KPiOACSfFU
	Jp5FQfStmT0bo8OLoibM7wXoWeZyg+fL4JLoFx7kY7SaKNvV30ObR34J4Z2bncI9HuqKT2BbwyG4d
	H0krjsxIa284KKXNaBwvYmNQcvAXyLFs3VtIHsNAXA+x4Pf/WQON87fDpKbG3ElntG0LnkIGSqomW
	bRMV17NRYiB6RTEo4NGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0IA-0002Gf-6P; Mon, 29 Apr 2019 07:01:34 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Ca-0005Ew-9m
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:54 +0000
Received: by mail-lf1-x144.google.com with SMTP id j20so7114435lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X79SrIi9c84VIrWeeLGrqQgrBJdkT4fyXXb11dpl5ZI=;
 b=FodnkuEmqqVuaM5mDPGWUCZOn1baCfEeqTxi+dIxUzLDrZXO/0mZGmUBicyEW2dam0
 shxT1VNv2cNfeI7a9gkdE3unft2FW4c7F86WvbDabsMHDoUb3W94Q3XfHuIgshSTU6uD
 cTCSIL50Kh7ocMBdk//GsoX7dWi2Iv3w8hZoKgl5DF/7HJqMzHcc3duWAV+RU25LhPHG
 cVH3isgjjR+o0f1ZvO9oo/n/ac5xSx8zIJgynE49YLoc4SR2JLZzylh76xAHDMGCAs74
 uurHec8CRsvdUTvr1jxGLIJknMQC1qiMVaiQYHA4lHUdmgptwIU69etDvrmsoyRI5LRm
 TGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X79SrIi9c84VIrWeeLGrqQgrBJdkT4fyXXb11dpl5ZI=;
 b=LA1ce3DAE4686zmAVxu03DnV1DostCCAkxijCmoZdSUMYBtWRder+EWhwktxrc0rB2
 UrLTkUr0krxCKAbf0WWLf44q+p9A0/vkTul0E7f/MAJw4WsUivmukXuxxRDKEivKgGBc
 0Czz3ccLffSY6oVutvnyQ6HYROeHBw9ESz3JDgY7DHKDJ5FcwhZpagj1tGJA35lDGl6S
 NwAjuGTrccCAHtrycioTGBYyiq0GeKrFaeY9EQBbnVa2qoQXF7FZqVcdiTgXmEl5L8vi
 wB8O3k1SSLrbTth4DgJvkd8mUA9BT1ps88JnbI0VUy1gZHFGAfvnWXPZ1MOFzi0yweda
 a8mg==
X-Gm-Message-State: APjAAAWfbMGv1elb2eI+urwYJygacj/Ece4PjK7OA56fzY7R+yVzVUav
 cNL5CTM8WtUE+vxEFiP6ER/OUw==
X-Google-Smtp-Source: APXvYqz2HI1dJLQ6NTVZVazrEaO9tcW9JY+dPMoexZcD6xY339/BeCzOPtYhoZrEh0iSOaLVtwy66g==
X-Received: by 2002:ac2:51a1:: with SMTP id f1mr22068165lfk.129.1556520946405; 
 Sun, 28 Apr 2019 23:55:46 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d16sm7204946lfi.75.2019.04.28.23.55.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:45 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:19:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH] arm64: defconfig: Update UFSHCD for Hi3660 soc
Message-ID: <20190429061942.2e3xy3ki7ua5woai@localhost>
References: <20190416170221.13764-1-valentin.schneider@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416170221.13764-1-valentin.schneider@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235549_015594_6B9DFC17 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: liwei213@huawei.com, john.stultz@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.w.gonzalez@free.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 06:02:21PM +0100, Valentin Schneider wrote:
> Commit 7ee7ef24d02d ("scsi: arm64: defconfig: enable configs for Hisilicon ufs")
> set 'CONFIG_SCSI_UFS_HISI=y', but the configs it depends
> on
> 
>   (CONFIG_SCSI_HFSHCD_PLATFORM && CONFIG_SCSI_UFSHCD)
> 
> were left to being built as modules.
> 
> Commit 1f4fa50dd48f ("arm64: defconfig: Regenerate for v4.20") "fixed"
> that by reverting to 'CONFIG_SCSI_UFS_HISI=m'.
> 
> Thing is, if the rootfs is stored in the on-board flash (which
> is the "canonical" way of doing things), we either need these drivers
> to be built-in, or we need to fiddle with an initramfs to access that
> flash and eventually load the modules installed over there.
> 
> The former is the easiest, do that.
> 
> Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
