Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC71163C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V66KGs1pt1Woq+4435uK/z0vM0VGMIbxcMa3CzFdg9U=; b=GQwQ3Q/7p4Re+Q
	/fjmDYUuM5W27PTq7lna8OlRn7lijm/p82nG3q6sOxILdAw+rPY194zJ3ePFduH+K9D3xg6k8iqBA
	1T8Lib1NF/F/gIFY8R7N/0Fr+WSQbDE+GXXr+YZ8dENSK4b2Ty1HItUwVlFcf0Z5DtnTi+4sAqdRn
	jVb2Ra5zu3kW4cXvDkWlw5SGVbuJL8VyXZnPcppCO3DBD5yesBzVOKFiJB+69WBaYZlpkixREMc5N
	OOyb4N2J7RqsuSLAzrmL6FJ/u0SwtFs57YgaQBbcQkjPArXoSNSQUkeH3ycmU51W/21Yk0JJUpGLa
	af1DKjstmbSIU5GbXORg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzIn-0004So-5I; Tue, 07 May 2019 12:34:33 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzIg-0004SN-17
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 12:34:27 +0000
Received: by mail-yw1-xc41.google.com with SMTP id j4so13042327ywk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 05:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kfZ8m4/77jvduCG4bPwJeV70zlwgb63pw0Vjlb8rqF8=;
 b=B8Db4XgbL+q06lMCNcvVBz7kWBlB+vdwrh36LKYzgK2CguEkY2KSMu2YC3FXFjNm8/
 /BH4RBubcc0vIIgci0Tk2Q1cEC+fkyli+ZxnpdzIU3akz+S/2KS4BJau3B5yPVvEkMLS
 CwkWaZhA93K2gvUHS/4E7FqzoAh5mLQX3pMwc1g3JNh+zrvKdbOY2me16ByeJc+AE9v5
 TsicXte8VVtPA9iXmLC3lfrYIUZ2vEnl5wEuEDiUti48Qy7Alcgc4irFWdR0OKBMinQd
 LFu72IjYfuRlMY7Kti7jlanJT0JVzkXauNJK+O4gNKmqsO49s4uTsEXUyD3sWzxPtWRf
 M3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kfZ8m4/77jvduCG4bPwJeV70zlwgb63pw0Vjlb8rqF8=;
 b=pgeIWQAYDzPfnAHwERHwTLgPrfGhxfC39zd8tHV/aBttei4ae5jNIVqhjglMUoaPGx
 D0ERSz1oovIJ37+4IyUNIdzfWib2M8AGMHe9FJdv93qCgh3A4+VjecNQFViX7HtlWcmB
 NhdtXZ89CrTmvq8LDPh/88Y92QE783uhcr+bAtOamEF9RU0nGm78HMzEOtSkFEFlSbTn
 qdiDzHNT0GKJoCEkoobjKW9/QQLNfHaHaCh8axXXkhMcSaE5wDSUGFMHxZYfhnPZA72k
 jyEqIX/Wc8qO8uaZoZtZo8hQpbpIQP/K1G09tGzcSMQNXCdlzAbFoODt3zJEOtp/R96A
 +NYA==
X-Gm-Message-State: APjAAAUdEmedSF2wkN28bh8NY/qMXYptur4JdhPF7u/LmnJ9KmpAPwI1
 nSeu7rSqr0YzYwfdaVxbLdXukA==
X-Google-Smtp-Source: APXvYqyFp/YR7IsLbum6uog0j2Nex2EGDxtBMTJ1oln18kB9Ysm8EwBHqphzDj2zdgigL1E1QCleWw==
X-Received: by 2002:a25:3b43:: with SMTP id i64mr20007449yba.477.1557232464662; 
 Tue, 07 May 2019 05:34:24 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id 198sm1522120ywd.23.2019.05.07.05.34.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 05:34:23 -0700 (PDT)
Date: Tue, 7 May 2019 20:34:13 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v1 04/17] ARM: dts: imx7s: Update coresight bindings for
 funnel
Message-ID: <20190507123413.GF21730@leoy-ThinkPad-X240s>
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <20190507034734.20622-5-leo.yan@linaro.org>
 <CAOMZO5D-8o25Wg1JW2rmWQepAKKGr5XTtpJm7J_qHJ8vLb-RKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5D-8o25Wg1JW2rmWQepAKKGr5XTtpJm7J_qHJ8vLb-RKw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_053426_101852_32CA7620 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Chris Healy <cphealy@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On Tue, May 07, 2019 at 07:57:00AM -0300, Fabio Estevam wrote:
> Hi Leo,
> 
> On Tue, May 7, 2019 at 12:48 AM Leo Yan <leo.yan@linaro.org> wrote:
> >
> > Switch to the new CoreSight dynamic funnel bindings.
> 
> This commit log does not contain the reasoning for the change.
> 
> Please explain why you are changing the compatible string here.

The main reason for changing the compatible string is: the old binding
strings are obsolete (the old bindings are still supported for backwards
compatibility) and the drivers will report warning if DTS uses these
obsolete strings; so this patch tries to update bindings with latest
compatible strings and thus can dismiss warning during CoreSight
driver's initialization.

Please let me know if anything is not clear for you.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
