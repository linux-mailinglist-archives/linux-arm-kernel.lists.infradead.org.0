Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BA84A341
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwWXianZmgfT/Ct059FhDGgCtnmpQ/npykALBTo6TnI=; b=CXRghaALIUFdzO
	3ucNu7WBbF9aPOotTSKLEAijpfqHNdnotoYNU8I/vi3yVg3uWgpBqp6+O/FXOrGCLweiQ6ykJyuLO
	r2XrxRYDZ6rhYXrbsTqXS7Jbthuj4oBL5VEvLQfrj8gVqymzit+Fdl4Rb8WRKhYKhiF0EawPZJWp2
	p3hrE/5YJEF6uSyNmhdKpGzyut618lxmWdAayYSSBIoM9Z1GWNzVXc+SdCI5BSJj/NGHUQ0emiRKw
	h18W1tICACZ+U7ffyKasFRcHEqLi92hoDPUqZS+EBZWrbiBLkyMIjmoGy2AoHjog/e3gpO8aiaJFP
	Rk9t1ICExmi1yZsHcVXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEgq-0006fr-It; Tue, 18 Jun 2019 14:02:24 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEgc-0006f6-0L
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:02:11 +0000
Received: by mail-lj1-x242.google.com with SMTP id 16so13234547ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c/oq6PYXBAtOBIL4wKV4csfkFnFuFDeoOXik6aWtHD0=;
 b=GeCn97TjTP96BLAQzE4IfeBlBpUmUrC5/KNCzouVXJwEeqUmjmIqhIcYkB80Q/rLLE
 a2h0j8alTs1fNe10AYSdGiR0GZ7iYAXy6SdxPLFK1pbuMHXlVUIx+cIJvRtpSSDx/FQ2
 Q2nsHApR3vVncCXePtgHK12ZldBDypNzToMB8T8DMPukzNXZU+wdh1PoqOrfLaBETsmF
 HpM4jiXIP0B8IFFL8OOpUvpxrEY5Kw0jRheZaX/thzKhP1Mcc2C5xZ3TRMhotKii/iRJ
 2O5/3VUywwYAMXwYesOLhpGKy1buwwFR/Td1W46ZiSQJ4Ne/u/pF0AhKnt2gkKYzTFXR
 hMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c/oq6PYXBAtOBIL4wKV4csfkFnFuFDeoOXik6aWtHD0=;
 b=HKxkU1TsWIbg6SrdO2gD6+5sPhRNt2YZIpk/9E7Y842ZiSVUPaxf5Pm0hql6Djp49B
 wrS7PuSLe/THr6W3J74/fjytw7q9xcLngHAz80ZQxwrQBQsR7xXm1mZvB3udbQNTNcnx
 CgNXUbjNzXuveVEMxdBYe7h1UChtT43bpG2mArZhkkKWunoEE0AaObpb3MpHEvI/y2T6
 Yg4Gj/bmkCZEZ1Fo/efGzU3rWEelQjE8W5ouJ30nmZvaKrIubSbUIRvtNulpkjdl2oOc
 760Ht8I9QQrFAYCn92ajaXVDF4C1oa+3iokOh8w9nqOyUgqD94n/gXDR20/oN2zQiYFC
 ZkNw==
X-Gm-Message-State: APjAAAXr4oZjdKYeGWzseEzP9ZB9oWALodVcv0X1mvsen2GSjyKrU99c
 CVyLr6GbvvXcfIvKfoTCccDz3uiwOgQNB/B3e9sMWFvM
X-Google-Smtp-Source: APXvYqxIOSz82C6GotSZhdxpV7t/RdzSd5kUvLAApU7gQ536c/KA+k4lt+HuTF50A3zM6eCuPR9WqxlQ2tgIWWwifTE=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr42584912lje.214.1560866527866; 
 Tue, 18 Jun 2019 07:02:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
In-Reply-To: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 18 Jun 2019 11:02:18 -0300
Message-ID: <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Pintu Agarwal <pintu.ping@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_070210_049929_10812BF6 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pintu,

On Mon, Jun 17, 2019 at 10:50 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> Hi All,
>
> I am trying to implement suspend/resume functionality to to imx-hdmi driver:
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/gpu/drm/imx/dw_hdmi-imx.c?h=v4.9.181

Please test a recent kernel, such as 5.1.11. I recall that last time
you reported an issue with the dw hdmi you were running kernel 3.10
with backported patches from 4.9.

Just tried suspend/resume on a imx6q board and HDMI behaves correctly.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
