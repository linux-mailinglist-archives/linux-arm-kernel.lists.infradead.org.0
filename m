Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F399F0AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYp9OVghT/EvhS2BYPh1BhCwdzwGXQ0mJgNHvybFksA=; b=kzQBk5Y/d9NDz/
	3uqN3MVCUDbjEd++XLNJRCrzcnc2AFEYw3HKB5owDUULWLHKKe9K+KKFALdbvDGlS6x+QN4/aUxfu
	1AREy4r/hhzNg4d8XHFg691yGFyGGgjzB2ge99cb1fs4Fyxth1Xq1Elx15piwh+HT1pw/EbIRsIbY
	BO2em+0H66ngw6NrmO/OvkRkIu7xryP3homGrHaS1lQOdzj9QaupjU3uMlMKgBwyNTY0D6XlO5Rph
	UKDAb57odSOK0r1cTs0Zt6ySI3HkNJOrgWJgvjKMto1yxLW8Fspz+9ybnKXfiINN4rpblNSxMLHtU
	iQlxHURPg548y7rZHgZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eeS-0002GU-RE; Tue, 27 Aug 2019 16:49:00 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eeH-0002FC-Jp; Tue, 27 Aug 2019 16:48:50 +0000
Received: by mail-oi1-f177.google.com with SMTP id l2so15505614oil.0;
 Tue, 27 Aug 2019 09:48:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wEdejl/3E6RvnYGJ/kyyb0K7QYCM4jHZSEvI4UNoUac=;
 b=aCyQa5aD5HrxW6okz/pReiAcO7gznzckmXfAyDpg6M/FbVqksEqhacwMTeMiWjI6eA
 T6pPSGMb/wjLc6BloNNwNRfE/YicFHnFqDQXgAlBIxHPP4yLEt5yUinCvJ4uCFv/4uax
 NgkKhl3QZXIkbp8iT2xcn7NsIkbgBWmx5lZsmgtyJyZccG51uaVK2VeiMmEHY7vtG+1I
 vg8IrD217zZpNyslq4tVvUO0mGBRF/W35v7DZX07M7C1ae2AKecpkG1y3OJSb3K/OTcx
 xA9L5FC3cTqPU29zFSKzEVdNj3se/e0hj/gxiSRdde6DSBLZddRYMJjxfymVzubvvJ1h
 xugA==
X-Gm-Message-State: APjAAAVo2vr8RZGqvOdpcbs09fkh4BBdRis2Z/ASqw+XFD5rAy60W9xV
 w8L6tWICNxEqPXgE80UIGA==
X-Google-Smtp-Source: APXvYqzDA2MsllrIzZyZtTCdbxjTgfn8lArwxLtk/7tMd9XzM3rUeQZ5LI+JOL8LFk7i+hNoJ0Tnow==
X-Received: by 2002:a54:4788:: with SMTP id o8mr16933180oic.100.1566924528431; 
 Tue, 27 Aug 2019 09:48:48 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t21sm4253147oic.6.2019.08.27.09.48.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:48:47 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:48:47 -0500
From: Rob Herring <robh@kernel.org>
To: dongchun.zhu@mediatek.com
Subject: Re: [V3, 1/2] media: dt-bindings: media: i2c: Add bindings for OV02A10
Message-ID: <20190827164847.GA22619@bogus>
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819034331.13098-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_094849_655468_89709940 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.177 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 11:43:30 +0800, <dongchun.zhu@mediatek.com> wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> Add device tree binding documentation for the OV02A10 camera sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 +++
>  2 files changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
