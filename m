Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA311D638A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 20:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bz4wh7qgkexKwU6LVpornMMXaFFJxV43Yvy5YMliqDM=; b=OvH5bd+twQ+zpp
	sen7bSHmnBQHBDOm8Zw8PM3fibihlUHVcA4CS6IOduX33+zhS7Lx/XSK5+GmzOigw0HVIzmJ+yeKW
	5B56joAm1xBt6J4DfF9aieQim8LK7LaVaIEuPlqnsYPiFFUHfefJ8a8CB7hfL9/VgsptIWg4CPbFb
	VImd1dK4P2svi9I0eugVOlkVg1wArOVX9jhWAxDDItaTXVORrltjLXPg/ZC0HoG+fLyuqiRnq1iZX
	Fu2E1M+eyVC3Auu+2gxjBoOZ9buKcdtPgKo1y7uLph8V8FH90yacppRzyircAuR/nBumejkgOd+nO
	vW5VxH00TbMv0Gp3j7MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja1Rf-0003wB-C4; Sat, 16 May 2020 18:21:59 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja1RT-0003vo-MZ; Sat, 16 May 2020 18:21:49 +0000
Received: by mail-ej1-x643.google.com with SMTP id j21so496532ejy.1;
 Sat, 16 May 2020 11:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nKCvzFzDJwI3HXouOp6WcYD5dHNC76jOugYKhj+rIOA=;
 b=XhASPMCvWya6WvtqiOlGXjfqrsEq+MQsJK1DiAbIl3GxFcq9r0C9d2SKwgtTJSYzFA
 FiPTIFzV34bZYJn7Gjagexd61oga87+3ugTwzeG4cF2zUzaWdH8tCmn1zlcO/TjYz8bC
 eTYRwz9gPlCmiWdkF2QBEFLlefHXAvxHpgUIoFEKcoEqEB1PJOVGnMHu/ZNXc9lZXjiY
 EV0kVtPCHKbXNLQffk/sDim/HX7ycpIC/BhsK0EMKaMCmUDmEma30h4RiSA73VvyMUep
 3TzXhXnjJGEJ9tnFHdRAOKL9ZodTk7j9lpbZ3ZUNAFgyqTsmheN3FFKQmmeHhPY51pg3
 B5NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nKCvzFzDJwI3HXouOp6WcYD5dHNC76jOugYKhj+rIOA=;
 b=KfroYUdcGrQOycuNTZrS5h4OID8o5FyXZAd8+zMSrGa+v+dAPCWN6yaplwe8AZyoz9
 nI8it8OX1/shsvS0hF/5sy1eEP7FZMpAVdUP0Sbn355pdOPpZw9VySnY5ZZod6bItrXp
 SiUk7LutXWBldsHekkE35f2O/dbjifpBE6AZRAb3POKCgQH8lNpQJGpi9fAsEtawLDVr
 IC7D0edzuzj8SDkjjmjN/X1+dGehSwygsfONfCAIutiLnjxA948MZ1s1Q325tmHek1vq
 76WMt54hjJJHulx2T60z8phYeAEId8UQza8ZQs1fgvPVFCGzZluJQnnPXoAudqC0x+oV
 F06g==
X-Gm-Message-State: AOAM532zQJP5/rsn6ctvI4bmkSMPJghTrV/0+ZErUqdmxuBy/4CibDSs
 xi15WDLK+yWUyXKIlzqAkY3XrQsmf18QcAnJnRNQEVGvNFo=
X-Google-Smtp-Source: ABdhPJx3ndsBB4Ig3ZS+qr3seZa4yyF/PHyxqN7ExN85//EBl1IHZROst3IN3b1DXe709rVv1gEC5YWmBAQa15jLM4M=
X-Received: by 2002:a17:906:7e15:: with SMTP id
 e21mr8591973ejr.106.1589653306123; 
 Sat, 16 May 2020 11:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-6-git-send-email-amittomer25@gmail.com>
 <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
In-Reply-To: <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Sat, 16 May 2020 23:51:09 +0530
Message-ID: <CABHD4K9aS+_xscVSgH6RiRGBBF59sNregwvsH=oKXujAHe-ing@mail.gmail.com>
Subject: Re: [PATCH v1 5/9] dt-bindings: dmaengine: convert Actions Semi Owl
 SoCs bindings to yaml
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_112147_739656_3A6B05B8 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

> (The kernel chose to use only one, but that's nothing the binding is
> concerned about).
But there are four different interrupt events corresponds to these four
interrupts.
So, if Kernel chooses to have only one interrupt , how other events
would be notified ?

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
