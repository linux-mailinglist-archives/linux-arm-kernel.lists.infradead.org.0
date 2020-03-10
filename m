Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D281117FFA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 14:57:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5jewkLWFRiMePey9uDiwB3RhRehQaPzTrjph+QoiKA=; b=Tj24NUBy84ar5C
	QjWYYz07VQM4D1WfLfJKuWv+II2cdaU3Lmp6EGUvkQif0rB8FUfEps6UburebEeTRwtJwT9clD+0U
	AQSUbCBe6v9iLrbGXkDrPvJmxcATtVQ/7USIj+xMHYlNfEWGcKQMbtJI+JpBVI1TIJ7gOtUqBPBUl
	RNUh7czqx09spX7jxc6wrH6ybCVBBxFrVARrP/xz9ETc6L3/758nq0PDB7pyY9bxxzEbeY1lFr4Rt
	z4WQjwFthXsKRkAiXYs4mT1pSXXrYiQUlOHFki7a/wiQMAnTlRzeaxrfHZMwBHpsvaHoSKZBg1JF7
	9XgWpKaouC2v1PufxLcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfOD-0000Pg-1J; Tue, 10 Mar 2020 13:57:45 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfO3-0000Or-Rl; Tue, 10 Mar 2020 13:57:37 +0000
Received: by mail-lf1-x131.google.com with SMTP id g4so4639887lfh.2;
 Tue, 10 Mar 2020 06:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a1V7f1F0LQmjo7Lwkhxv0H2OITNt4DTANxKKHcaVDpM=;
 b=oxgQQElsrxUHhCc9YjPXkd1tmnpRDKrP2gylnsR6DYAg5/FRO3tM2yHIDEpDIRRHKv
 v0mTqFr60upqjPDGSSgbTNZVGy0Gtrw8tXRTiZGWUVmbozdhWNpOY8YHW41xpBJ5pKog
 iuw9inydwR+1ITq+9XwPniSknR7N6dgNcY00owCmIPBUEMaBZ34u13knQFEBk1pYHORI
 cuaBSUXFPqhyYWzjjFA7/DMcAucFdHw06PYnD+Qdc8fzDQxUQcqx0AAquECXRp8b2pJM
 9hFcj8+CdlmAcmbzAsksu3YLBO0ycaSiFHW/9jahGY5H6SUqkt40jAn+DQhELgWlqRq5
 zqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a1V7f1F0LQmjo7Lwkhxv0H2OITNt4DTANxKKHcaVDpM=;
 b=UWb3+tJZeIkVdGV7MLYJPuLxeaSQJ2QAE1WEI8aGC9LrFgfWHhYmemZCQ41/8iJ8ca
 MMS3piQSsI9g8A26RZl/FMmQadEs7/AkRGmDtZgXYQsben0ZkyDxKS0CBBfUQQkOwv+B
 dRTc7nc9+YED7RH7gTpwxsbsGZ3z3KijxkJtLpLwznaxPn/hwGaGMc0577xRI9DgTwGW
 CmqMFeFnK776RFZX7kqmcLgN/visqRZMQn7PHlOGdXauJLRpo0LvEIWjpBV8gun39zjd
 Ade/T/dQqpXqodHSP7uJaM9aHTAD0QNNIc+otACQu4zYywZYh1GU3EUkHTioONlzLoiR
 Lzsw==
X-Gm-Message-State: ANhLgQ1h7hbJGe/5SKppcnNEIH0Ahmrx0gMd3DmC83unbbwQLbwBeMLA
 JExbKSUNfQ3vO5nhtzObXaO4uY6uLIBf4T2l7QQ=
X-Google-Smtp-Source: ADFU+vsInh8fH3rOKgWvw4Sp1i/c3pYIMP6oFihYh35j+7wlxleB92/F9wsbHoy+4eLgsGT19IloKcl8gLA6bIcetZk=
X-Received: by 2002:a05:6512:1054:: with SMTP id
 c20mr12605269lfb.69.1583848651279; 
 Tue, 10 Mar 2020 06:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-2-robert.foss@linaro.org>
In-Reply-To: <20200310134603.30260-2-robert.foss@linaro.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2020 10:57:22 -0300
Message-ID: <CAOMZO5C9Oj+SmTroE+bSsGcOPpz6se+WOqw1qJU9x6TrzbzZKw@mail.gmail.com>
Subject: Re: [v1 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Robert Foss <robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_065735_904532_088FC0E9 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 ben.kao@intel.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Tue, Mar 10, 2020 at 10:46 AM Robert Foss <robert.foss@linaro.org> wrote:

> +    ov8856: camera-sensor@10 {
> +        compatible = "ovti,ov8856";
> +        reg = <0x10>;
> +        reset-gpios = <&pio 111 GPIO_ACTIVE_HIGH>;

Could you double check this is correct? Other OmniVision sensors have
reset-gpios as active low.

I suspect that the driver has also an inverted logic, so that's why it works.

I don't have access to the datasheet though, so I am just guessing.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
