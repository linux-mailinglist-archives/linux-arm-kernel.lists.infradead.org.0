Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C6F3C84B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBMjRIKubHVY3uQkoaD90bBJ22Dqf70vYsjM1UR0i5s=; b=MYL76VOUHrBBAv
	YzmjyKkm/A1TYar7P5p/bQXTijtN3DM2gIvAfd2hCvzcz5sBozOu8e67SLbJilc2rOpayFpywae3d
	vvRvnjB0jOa7FbdUvWC8C06IMS3i31HMRktygwICC+Q/qqVBqwQDEh+lEoyGVJhw7j1NC7D7A5jZR
	a4/DxCUTBh27I7yGjqsI4YMKFfgaURCMLWy1zYnT5WUiNS+IfAhuFewp6RcG7lM4Bop9JeGLr9efJ
	ZXCGcvN43oBaxP7Vv1GPW1UwaB95ovYBrVN+A5IWAKmiODWBOsZ/4u+DCduvNEIBlIUaKkJglX+i+
	b2Gi3i/5GigLhLPOKOOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadlh-00073L-V8; Tue, 11 Jun 2019 10:12:41 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadlE-0006wP-Ef
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:12:14 +0000
Received: by mail-ed1-x52b.google.com with SMTP id m10so19226022edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 03:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c8jnMiv81FwEUDuhouV41YRUAtMXDx9VCwEGz+YrJoE=;
 b=NM4NN/J7d9ru8kd3dn7OtVQIZ0cawvdRGuCDqIkNkZMD8Ez/odI0RulfUMhxKDaWQg
 T4oSh/0nKy4M7wpOstzpi3+Gsqe/9d2tghUe8nzifFPlv2s5t4e2dU/mC3rydpUTxSeK
 G43KHW5c1W6w8DW2R0xGyThcHmBk8WMIZIcig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c8jnMiv81FwEUDuhouV41YRUAtMXDx9VCwEGz+YrJoE=;
 b=smUHl1qGhtaJ64bVj36AjbdvCsqSXg1FiMEyOguYvEJHWZ+DOMd7M6Yu1IBvCuSsRs
 WnsTkiXEjVncWsvUqjZuFU4zd+PcqXbF8RXNUgTRrUOjeKuWJ7bbqgNk5o3SskHZlCFJ
 AxPQe0yOQn8p6BODCRF4AYfoo8y60+i7mwA6EdPvR/fSbaHz7KPpLlg9V5q+6VTGuzGn
 KMa4Wh1H3FIlzvgR6yzngJ/brKyZrJeMDnj2/J+MOvDMeNpTRjbavAnvgLXHM39DCgW/
 klN/2ABc6OgNVF3IU/lKXoMwrQdp8qTB4A1hDi+fg00kVkZksb7+SuewU4RwXKdIc0Ow
 8Ahw==
X-Gm-Message-State: APjAAAUH7Yp6V01ok7Oma17DTTBs6/tzwyyl299E/C0sUdTmcPGvEDag
 aFlNF57/48ZLFvBLc1u5ovsYFu9CpRvLvg==
X-Google-Smtp-Source: APXvYqxb0AxRYmRxfXIvhASe9U8IPXyOpFCoXzcEjUqMyAv1Urr0D1My3CI4uMUzvJH++iitvDmW0w==
X-Received: by 2002:a50:b7e2:: with SMTP id i31mr32597287ede.229.1560247930472; 
 Tue, 11 Jun 2019 03:12:10 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43])
 by smtp.gmail.com with ESMTPSA id b53sm719734edd.45.2019.06.11.03.12.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 03:12:09 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id n4so12368226wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 03:12:09 -0700 (PDT)
X-Received: by 2002:adf:f246:: with SMTP id b6mr554368wrp.92.1560247928904;
 Tue, 11 Jun 2019 03:12:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
 <20190516032332.56844-5-daoyuan.huang@mediatek.com>
 <20190604112039.GA12168@chromium.org>
 <1560244803.15624.6.camel@mtksdccf07>
In-Reply-To: <1560244803.15624.6.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 11 Jun 2019 19:11:57 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BmSrkRmQFuiGz5RcBP01Ae32w6EhtP0n3cO7Pki=9Rng@mail.gmail.com>
Message-ID: <CAAFQd5BmSrkRmQFuiGz5RcBP01Ae32w6EhtP0n3cO7Pki=9Rng@mail.gmail.com>
Subject: Re: [RFC v2 4/4] media: platform: mtk-mdp3: Add Mediatek MDP3 driver
To: Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Alexandre Courbot <acourbot@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031212_627470_383E836F 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Ping-Hsun Wu <ping-hsun.wu@mediatek.com>, zwisler@chromium.org,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daoyuan,

On Tue, Jun 11, 2019 at 6:20 PM Daoyuan Huang
<daoyuan.huang@mediatek.com> wrote:
>
> hi Tomasz:
>
> Thanks for your review comments, the corresponding modification
> & explanation is under preparation, will update soon.
>
> Thanks.

Thanks.

Note that Alexandre may already be reviewing the rest of this patch,
so I'd consult with him if sending a next revision or waiting for his
review is preferred.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
