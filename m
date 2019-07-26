Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2E176006
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 09:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRKdsFfxhs3X0BWDy/yKDzKnAB52gxa0DerBPyWyqIw=; b=B2axYJn/RRCvhy
	nh6ADxwmo8K0EJLMPajVc+duorOcqsYsRCnkspIVNz4br7tLmHqSynfQGDCQi2IgjLfaP6ggHLfMa
	LVntU+KPSxM+qX0pzPIkd2u9WLx3kUB2BnLte4kfwr4KjXXae7+LapGdajpdx03l/QPkmlSx61Jte
	21knZOTzXWwGAW7u/jxvQDSKYMsuNp4W1r0h2X0jBQPMk5r5OdUjYCqHN6SoFCQ5W4ccc9xblxMuL
	97pEO2GFBncaXuHuZkmZjSPDDcwa9PWqLDjt1kSIXwDAMX7q89ObmypQMHf7AQNLweZj5VEyc1DjL
	9YNnTdMbEClACPwaGuLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqutF-0006oM-Ld; Fri, 26 Jul 2019 07:43:45 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqusQ-0006na-8s
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 07:42:55 +0000
Received: by mail-ed1-x542.google.com with SMTP id k8so52410281edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 00:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZVnIMdlW5ld59nigIKLRvJHeaKWA8dIDfDarP1mW9uY=;
 b=i9++qOzwRPbXujar5MJQzocehC3H4umrtYlWOzNvO927fYQeKQkDVvo8SLyg4mIlGk
 o6pvfweGhYY27xx+rk1G48SH9IU5gf3Fy6oumNOb084qbUBdg8wGD5u7z/2r7aCPrk+h
 w+Bn9/Yh5b0FZRhCgL0ofjnlCfJrsVxD0JotI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZVnIMdlW5ld59nigIKLRvJHeaKWA8dIDfDarP1mW9uY=;
 b=ZqDudbTqvuE+Q4a48D4P03Ooh23rx5zOshs7Pfjf5gSA4Vm0Aiyq6jeJuZGiTv54pW
 7Ghy9gWpWtwPk/o5/Zi5TSYbqOmjAIX7IK755uD4a5s/DeoPXADEPxmvCA6gXQHUzpH9
 NZMszG0asgaQhnvioWc7a2nuGvAd1G9ShlMj+UvB9YiEkpxubONd4oGQGUFfsA7yjOCL
 R4laKywDqyePVwUUBhFt6Jake0z3+55U/6Z+zdg7eSlIU6HcWXy16EgHMIi9hQgb9LVY
 51jydNKB9dZTD67Tkw8PPwk4CB0lTL+oUkweOT1FKClzToYXNt3flBZT5M/ofbKoTzZ6
 eEpA==
X-Gm-Message-State: APjAAAWoPEAYSUfeq0jERDi8r//07XI25CG6llfq+35LNt0LSVkSG4g8
 wp6KFlfDhZqghSEPbIaxgc0Q4sBgHd4pHg==
X-Google-Smtp-Source: APXvYqxihVeW0sJvwiUbkjLLIqQfrECUuU1kNfrfeUOBh2gtt5QmsT5NT2wZycOkMXHZj2iBzPxv8w==
X-Received: by 2002:a17:906:80cc:: with SMTP id
 a12mr70987760ejx.132.1564126971418; 
 Fri, 26 Jul 2019 00:42:51 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id w27sm14525605edw.63.2019.07.26.00.42.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 00:42:48 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id z1so53307468wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 00:42:48 -0700 (PDT)
X-Received: by 2002:a5d:5012:: with SMTP id e18mr71567362wrt.166.1564126968020; 
 Fri, 26 Jul 2019 00:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07>
 <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
 <1563870117.1212.455.camel@mtksdccf07>
 <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
 <20190726074116.GA19745@infradead.org>
In-Reply-To: <20190726074116.GA19745@infradead.org>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 26 Jul 2019 16:42:36 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
Message-ID: <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
Subject: Re: [RFC,
 v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_004254_349884_50F65F67 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <sean.cheng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jungo Lin <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 4:41 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Fri, Jul 26, 2019 at 02:15:14PM +0900, Tomasz Figa wrote:
> > Could you try dma_get_sgtable() with the SCP struct device and then
> > dma_map_sg() with the P1 struct device?
>
> Please don't do that.  dma_get_sgtable is a pretty broken API (see
> the common near the arm implementation) and we should not add more
> users of it.  If you want a piece of memory that can be mapped to
> multiple devices allocate it using alloc_pages and then just map
> it to each device.

Thanks for taking a look at this thread.

Unfortunately that wouldn't work. We have a specific reserved memory
pool that is the only memory area accessible to one of the devices.
Any idea how to handle this?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
