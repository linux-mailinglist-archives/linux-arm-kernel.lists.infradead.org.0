Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111969F615
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55KNr55/++oEutQOrwkcYGL6Eu+ZMBeRyxIIRG71QIU=; b=sHaT4iHKc1OG2T
	kNyia+1uH+LiOmzMWpmfu+QK9QrybAcuH1FDPkmuNaBpdy7WA18Ya1lxBcLB9yqqsisFQbAL7HeML
	sNz0HsGCQYAlIK/o+G8qlbXBq0xioqsIphW68NmuCTMbOVxDm0l4M1g6IiVt4b00r82ggreA3Zg80
	hldzn+7+VosinkjvMZzFZz+Zr/8lWl1wccm6mjpDkDlBtxCv/N2vU4bw8E4WvdtQaiYHnwmWHBH6w
	55ltFQcqTQXnGB2oifZKPVeWn2vmKXmVT1Fh5Brdjvonpat++wuo+NzCyj0X9ODyXy5E9fu8RJTSZ
	8/PFCe1D1BTk1Wj/ZrSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jtN-0008Mq-GH; Tue, 27 Aug 2019 22:24:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jsq-0008D6-BI
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 22:24:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id q139so280362pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 15:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=vCX5b31iY8wVKWn4s0MiMbZnH0WhFm1gAfks1OXyHmA=;
 b=F+EjFb8mnDRedjegmCbjOeCNiw919VuMRS1FKW3wGCXia8C4iKHKjDFThdV6YyAepH
 IVxQKZBtOjFgT0DVcbfw0yvET5QE2z4FPf5b0EiriI4ohsgDMXB2xXfkaS6dZOtviPRl
 ewk7TlBPUAIOYOsGvyzenlF2UoYhChVGU9EW4i6+Hw8fLjfKoD9kqtw+D4z9J3w/9iaX
 AyM/gejkEBTGy+AGHf1SALhYnvs44Gnc/RDa1yQkKXX3ON/LH+VILy/+3PPo+HigkX2q
 Wf12xyWgkf6oNs7VoBquCPVKLz1lH7XgGxdvcq2f/rQLw4WqoajzaCI/hgjcY8AeBJLg
 V4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=vCX5b31iY8wVKWn4s0MiMbZnH0WhFm1gAfks1OXyHmA=;
 b=t4iOhsau1YqIogF97NJkIEBQtbM2J9NbfBYh398AtJAzO8P/4sIZevqpgF6VR6dC9F
 QTliK7zWa2HHHnZhQ5MCFiC2cNB8UbluB4Lyx6zSDrDNakPWcAcCTGD7ybJAWEKZ+roN
 T3cvbto4w7ur1qzqhbUx33Yd14Hxr5CxNt9xh6Ya/ia2rfYzKsqf2hbBv2b7feGO28Wi
 lL1Azjr8LlEGbGFEZ7mbDiYGWHB/hKnKhTha1VGHbXyZ3wd/Ajzq67x4EyxeP7sQ3/I7
 zunIZA4STMkliRZIxzmBehGxfkj4aoDnnvq6XTEvbTQLYr5i7o3d93WNujF9tuA/9smw
 vY6w==
X-Gm-Message-State: APjAAAWooNjvHeOMMa78aUnX3kj4lzNCVeXDHkpNIt0APfVQpa3NISoz
 kljnV2N+PieWSg2GH+9vEG5Iyw==
X-Google-Smtp-Source: APXvYqxx1tZzErI7XJVc/UYjGuLNFMxrAtv5a6h2jHs+k/r7nNepgGtzkViHmUpx9AdKzhbPP5zTnA==
X-Received: by 2002:aa7:9edc:: with SMTP id r28mr860234pfq.219.1566944651789; 
 Tue, 27 Aug 2019 15:24:11 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
 by smtp.gmail.com with ESMTPSA id e21sm327759pfi.13.2019.08.27.15.24.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 15:24:11 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH 0/7] arm64: dts: meson: ir keymap updates
In-Reply-To: <CAFBinCD0uhE9Fj1we2MkaTbk7RwtmKh7Fn1C-2nn9wiWqCoNfg@mail.gmail.com>
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
 <CAFBinCD0uhE9Fj1we2MkaTbk7RwtmKh7Fn1C-2nn9wiWqCoNfg@mail.gmail.com>
Date: Tue, 27 Aug 2019 15:24:10 -0700
Message-ID: <7h7e6yuu0l.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152412_774827_133C38A5 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Sun, Aug 25, 2019 at 6:03 AM Christian Hewitt
> <christianshewitt@gmail.com> wrote:
>>
>> This series adds keymaps for several box/board vendor IR remote devices
>> to respective device-tree files. The keymaps were submitted in [0] and
>> have been queued for inclusion in Linux 5.4.
>>
>> The Khadas remote change swaps the rc-geekbox keymap for rc-khadas. The
>> Geekbox branded remote was only sold for a brief period when VIM(1) was
>> a new device. The Khadas branded remote that replaced it exchanged the
>> Geekbox full-screen key for an Android mouse button using a different IR
>> keycode. The rc-khadas keymap supports the mouse button keycode and maps
>> it to KEY_MUTE.
>>
>> [0] https://patchwork.kernel.org/project/linux-media/list/?series=160309
>>
>> Christian Hewitt (7):
>>   arm64: dts: meson-g12b-odroid-n2: add rc-odroid keymap
>>   arm64: dts: meson-g12a-x96-max: add rc-x96max keymap
>>   arm64: dts: meson-gxbb-wetek-hub: add rc-wetek-hub keymap
>>   arm64: dts: meson-gxbb-wetek-play2: add rc-wetek-play2 keymap
>>   arm64: dts: meson-gxl-s905x-khadas-vim: use rc-khadas keymap
>>   arm64: dts: meson-gxl-s905w-tx3-mini: add rc-tx3mini keymap
>>   arm64: dts: meson-gxm-khadas-vim2: use rc-khadas keymap
>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.4 w/Martin's tag,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
