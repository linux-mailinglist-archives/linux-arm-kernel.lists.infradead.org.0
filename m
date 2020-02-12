Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB54615B36E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 23:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAfafunXm+JVS3VSDTyR+cQxKrLyoimy+27nrpRi+kY=; b=KyuDj+ziqCiJeu
	q/+aedYPEnmloeg8cwhtuuSBMd4jbczMFRCEBy6o+y3bQeiIjM3zPICvPo33PQBPr3U0htsnfiib3
	gwGRQWIiKPw/ByI4gjqKBkuachXz4H5yuCB+vqvfFkscqHEQTls4sB3DMi8xDUlYcDLS+bmqt5V1N
	DuFa0zqynVyCIhYhIQ4fcdxFNtsdEWJ+s+pqZF2mo7p4Tk8bQNUl6qtiaGrTyCRvNC07MQZ5R3RyQ
	jtlme7A4r5l5K7dBTP7raGDM9y0D52hCE1UTjAY3E4XvjSidTLXQ8WaA4yOX+ZPjn0Hyl0deHehhK
	Mn4jPbMz4Gz65Tp421nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20FP-0006Om-KW; Wed, 12 Feb 2020 22:12:43 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20FF-0006OE-9i
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 22:12:37 +0000
Received: by mail-il1-x143.google.com with SMTP id t17so3139928ilm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 14:12:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wdP0ovbmvDZYICvamxtqlMozHNpRomdhcvqsRnXUQX4=;
 b=VresCRs7yf8cbcowW6xFfScuoMordtYPvocPOGgkt/bPIgpHRVM/9mqFXzeGqUPm8B
 fzEbCFsUglJPKjsqx1S+BS2RbwUajDAmEnKKl9Ck+uVdICJs6q7yyT6ZJNI04OFcVZ6A
 af7oFXo7sM8ftd8b6CgpWgE4Gq2fNYTpdbWKf9KQMSBAatHRH4GED2NwxqIghtxCeo5E
 KuG9TSJldrgGFrWBi3KNzAdtka2zX09Z7JRzKzYLF4WCL9PJ5/GICJjfyTabuMD1LxbC
 /7HhEfbYYRx7CnvW1t5gusqLs2iuymJBqUw7d+wq2nfmY7QBae3V8YekmU3mdfyhR8+N
 yP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wdP0ovbmvDZYICvamxtqlMozHNpRomdhcvqsRnXUQX4=;
 b=ThrgEek42AGH4szTc5/ptDttxHonR0GUqUsOTa0WMilNhmS+3pAQwuEd4Sqj9bXaKl
 U1wT6HrAAAP6BXH+MGIjYag8gYAQPCuIowMGsc9Fo1swVxa+l+K0oP9ouXopkGhZzmbZ
 7sxTpJhGWOavKbsZEhP4bHHwHLUSAh12CLeKAJTH7pD6jbOIRrwFCxR8vvc/XHEjghHJ
 F/hqgxTrh9oP3GtkjYmuyABrwSDugLStXgN11OhMLvuXqZ5ark3FP+w/z/0+tZizwU4y
 OnwvUCJskR0eCfGWPbSLQIuegrZ5bBKJw+ftUblrXQv0PhemdYvpoKvrxQSD0cnjOWcC
 wuKw==
X-Gm-Message-State: APjAAAU5wIau/Mq9oOwet/8cXDYtJ8PTfmq5dC5ZNgyQWVFG9amDpseB
 JyHFwedAIGQjmdLiywSnuBLCfl56R62zh874jb0EYA==
X-Google-Smtp-Source: APXvYqypi6T4y7kMEvHg1Wp3t1NjZK6kQRjwYnUxOcPiraf/Rq4rl1Q7RmE+/7ISPHkiwPO2rJG+YhCvwacW4+TI/18=
X-Received: by 2002:a92:9f1a:: with SMTP id u26mr13534880ili.72.1581545552462; 
 Wed, 12 Feb 2020 14:12:32 -0800 (PST)
MIME-Version: 1.0
References: <20200210213924.20037-1-mike.leach@linaro.org>
 <20200210213924.20037-12-mike.leach@linaro.org>
 <20200211115852.GA52147@bogus>
In-Reply-To: <20200211115852.GA52147@bogus>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 12 Feb 2020 15:12:21 -0700
Message-ID: <CANLsYkxOK+21JutM7ryz1ux0gHBTa51q5r-9i18kFLvMKouShA@mail.gmail.com>
Subject: Re: [PATCH v9 11/15] dt-bindings: arm: Juno platform - add CTI
 entries to device tree.
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_141235_948265_060DD761 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, maxime@cerno.tech,
 Jon Corbet <corbet@lwn.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Feb 2020 at 04:59, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, Feb 10, 2020 at 09:39:20PM +0000, Mike Leach wrote:
> > Add in CTI entries for Juno r0, r1 and r2 to device tree entries.
> >
>
> I can take this patch alone unless you have plans to take all in go.

Please hang on to it for the moment.  I'll get back to you if/when we
decide to move forward with this set.

Thanks,
Mathieu

>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
