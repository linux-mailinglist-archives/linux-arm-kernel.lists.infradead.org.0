Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F711D6B46
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 19:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ColSQhFP/+zH1hf2ncIxrkCzif8cTTtYiMBKkCpDT3g=; b=DZkH7GmcGJ5wjE
	yJ5l5E/vuVB+a05chmsjDzTIhxSaDfgVbEssHbHdaOZnf0TyJy8NxDu59I5L9A0C4fZRxKVPL3Gyy
	cj5cR1u/k+4doQZH6RyF6CJz75TDqBk8AI2MB4x/ON+IyG5iIV664P/PbupcsSlq3kB5UBGKVGIA/
	2MHQ5MRnBtfY4M6hdBBb7rGEV73fOJ6zjrI3gY9NIxPY8xlxZzVNCPqko6L6+5EzcbWMaUyJK2f6N
	doE0IkaF4jNNG3d3R8FrwYqfq5JDG0PwqDDhjBGfm8LWrLzxGDoU5CvrL2BDsNoZRMYRZIN5+VpiA
	KvGA7kEtLjx8z6yvlrZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaMqc-0004qZ-6A; Sun, 17 May 2020 17:13:10 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaMqT-0004pq-3s; Sun, 17 May 2020 17:13:02 +0000
Received: by mail-ed1-x532.google.com with SMTP id b91so6446484edf.3;
 Sun, 17 May 2020 10:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KLA7iwxkkZaEe+a5DOe1yKmTHMqLvE482kATUXCfdGA=;
 b=R8Wz1lI4CLk450TXD3doFzsflzNTAt1RBqQyDAHn+j5SygBY1zsopy/ue3X+2Q7i+R
 UTQavT9TnpbTzeaxI2Hbc8qdoEN+GaqFpLsAucQA//iRxsSD1FFidqLozPjmdFjcmP55
 P07ecaG+mLlrqL0F0DaLmt0pxMzc4RhXeQPynfSGYRUjxz5gHM0AsMWM2VJrXz0uqDrY
 kWrgDQOu5plphuGIRDQ3DwMldJ+peQCSt5gcIc6ectSPoVYBBTJwVRwR9TemZaXetNjA
 mxt8I8Wyc74PyqKEYmbigNADeoaaclHkfJ1L++ZqRUOlPMtesYERTheahRaRAVaGF2c5
 PGXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KLA7iwxkkZaEe+a5DOe1yKmTHMqLvE482kATUXCfdGA=;
 b=KFY5AKfXSF2IW7kFWBQaLaYaaQAmeYyr/+MGFILXeqo4mye2jb3LIDTmfrBEgYGXMj
 VSQnabMXjP8lhmG53tlNWmBa038ZFxgPP+OexcZmrTa6C3nGhf0lMISQMlC+GPgX0g97
 M1gwSLpqs3qL3IzRSj33G6owTt7l9SuVGUqorUybUnNWowh7DG2Rtb5pDM1elLGjmUiq
 yihTlCnxyhck0Ua+cJHC51QfuSbnFLDljPHjgZuOQoDGrr36UfLIQjXOg+0NjRWRd35o
 izzK4XGXSEkhmXNEnWbLQSpwspWlkvj5ehwaXOqWDm8fWIa8Zu9aJ//vdWlJLO38XYjG
 54dg==
X-Gm-Message-State: AOAM531uw71NnNzZs+x7daKMFG7QFc0IxU9CAAzQP4WQ02E0/SSh3Jfq
 D2TZoDVIBrKHOrevF7j5mISlX7NNgbj/Bm+geUQ=
X-Google-Smtp-Source: ABdhPJw3tYifonZ1qR4I2lbjr/innKLU8dZ6Bg4VrCM7hVSelRH/8a43px/KFbkYjTqXeftsNXB3ymGdFisL7XNLeTc=
X-Received: by 2002:a50:e607:: with SMTP id y7mr10863209edm.71.1589735576627; 
 Sun, 17 May 2020 10:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-9-git-send-email-amittomer25@gmail.com>
 <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
 <CABHD4K9yjUGuo0w-RfhdZQJm3Wtj6bU2H4DXcp4Jjp=e0fFeyA@mail.gmail.com>
 <2cd3cdaf-826e-9d12-9fd4-9f7e2a517ecd@arm.com>
In-Reply-To: <2cd3cdaf-826e-9d12-9fd4-9f7e2a517ecd@arm.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Sun, 17 May 2020 22:42:20 +0530
Message-ID: <CABHD4K-OaQ4Vf_+dg9FMR97ocLeUkDswyEnChPV=H=VcbyUhkg@mail.gmail.com>
Subject: Re: [PATCH v1 8/9] arm64: dts: actions: Add MMC controller support
 for S700
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_101301_178291_0106308C 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, Rob Herring <robh+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> I don't understand what this has to do with the driver, but I asked
> above to also change the binding, allowing this compatible string
> combination.
if we add these two strings "actions,s700-mmc", "actions,owl-mmc" to dts file
and leave the driver as it. Wouldn't this be mismatch(as driver only
has "actions,owl-mmc"
and DTS has two strings).

Shouldn't that be concerned about  ?

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
