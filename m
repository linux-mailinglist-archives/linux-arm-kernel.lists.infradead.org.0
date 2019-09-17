Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F53B56F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qata+bn4+tTXe87hKpK3xxhVPvIVYQ7kqfyiMwGh2js=; b=od8HAFpkj6YPdw
	rdDVCXijawEnw/lCNU3t8WuQimnJMvLx5u9yKMo4VZ8Bc0cQq9RMcWVjsoz0faT5FYCUcyZgryybx
	CIKTKKu8N2kDzDdzx5/TmGb2cZCZWBuilrUbEwESLA5iEBhJSiqN+KG5oiuBcS9fFzIpZldPE29Ox
	VhAPzoORMae0mG17LhbFlwsB5PdpDV0zwlMYYooDCKz9UpdyI6dkRlVYPo/6NwleJF/KbotS3JBJT
	9pJFh/KxT51AjfYmFYS5c2r1Ky06K0RjI1YZ3SRtkLTW0LhRBlj8CEN4MK3+BpncxNb4c/5f8R+E+
	lJlyg30SYATLZ1FANF8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAK4P-0001Hy-3x; Tue, 17 Sep 2019 20:27:29 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAK46-0001HH-50; Tue, 17 Sep 2019 20:27:11 +0000
Received: by mail-ot1-f68.google.com with SMTP id f21so1125543otl.13;
 Tue, 17 Sep 2019 13:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s83Wv5uCp+7Qj+4GmDjA5Ca5EmGbCciwbwiS4sYI9qI=;
 b=R8dynuLMjRVVQ6KijcOW+mGD+pbVj9oWrZ9uFP6uc9GK2sNqeHR3iiWL1FCgHVmLYw
 PsEDnrSgZGtm+m6mPyiRBMwVOhNmPapvUYZqXW6y+SpJYBRr4SqNhGlFrNVRWifz1qyq
 Z8SInqLA2mhFDl0TzVgLzY9yDJE0yLbL0wl4/6hpgckIJhhQaGTcLotyyavsUUOMKkBp
 LzDeNf2EqY8hrCi1qXo0KsKV+06Cytw8GGNpwYHeqXtfEtV3viQ9NvvkeJffzpQ5YJjn
 vN5W8739nGT86oyVee3oQjM+5yi4R2SPyrGkJ/6Ju50zQNoKpfpH6CgRgzq97GKlSyUp
 55sg==
X-Gm-Message-State: APjAAAVG2cFr1LskNENWOvldW4JmqrgXcCuDU4HUAqxRzZZ7HCYM2ouS
 24oCQhxyBisNoahRXq9I8Q==
X-Google-Smtp-Source: APXvYqyBsKu4pZeTpW1VfblTNNE7l4+9V7A8vmvIBWG8fqYJX20migoouN+/XxWz8CBFdryNxUXvmA==
X-Received: by 2002:a05:6830:1047:: with SMTP id
 b7mr625204otp.68.1568752029207; 
 Tue, 17 Sep 2019 13:27:09 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k3sm1026619otn.38.2019.09.17.13.27.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 13:27:08 -0700 (PDT)
Date: Tue, 17 Sep 2019 15:27:08 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v2 02/11] dt-bindings: phy-mtk-tphy: make the ref clock
 optional
Message-ID: <20190917202708.GA11898@bogus>
References: <1567149298-29366-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567149298-29366-2-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567149298-29366-2-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_132710_194207_57FA0606 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 15:14:49 +0800, Chunfeng Yun wrote:
> Make the ref clock optional, then we no need refer to a fixed-clock
> in DTS anymore when the clock of USB3 PHY comes from oscillator
> directly
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2: no changes
> ---
>  .../devicetree/bindings/phy/phy-mtk-tphy.txt        | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
