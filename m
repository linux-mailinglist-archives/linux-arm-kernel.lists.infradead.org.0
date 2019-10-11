Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28BED4369
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rp6VkcQAQz4kIveqUlsFCJ1M4yQHjevyHMOgGss0bY=; b=VO4kK0qIDXs/+/
	0+oMtOC6uZiaDPlLfyrBgrNUjgvXqv0j3CwQyEcgUQeRJsbeKHcy7K+3HJdM2ahTwZSnC8KU4mYYN
	BZDiJE7pHTCOVUwV9x9/436CgygCUZsH3HpOuoOut1TvdhdO7g8EkhZdV9/diGFVQLyFOXiABhRHf
	5hp8fE4fK2QzNiPYiAhO0MU8vwvz4KnZlZCY8U1CHMlADXJCS5pSN1lTybtm7AW3xv+qwOAZxVCLN
	n0y6KU+rqrqDsgTVucNv2jUCzRQL5jjfON6W1K3sxZots73X69+tZj/PJd0VlVN8Wkea/2bMYcIYL
	s0GNJLFs1vXUU9MSS1+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwFp-0002pu-32; Fri, 11 Oct 2019 14:50:53 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwFg-0002pK-5K
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:50:45 +0000
Received: by mail-oi1-f193.google.com with SMTP id x3so8235847oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 07:50:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=gryLhIXL4l6QqVF4jY3/Zduxk2LABaCpupxRbGKjliY=;
 b=UWHPJDesUHLRkKH9XY2H8aruzXOnWwm70orWzLMlsPaWBwX33CpBsA08yB/ZkX+ZGe
 rFdXruYIR0941H0HpvLY2t/EssC5f0ModHO62P4HmkpsXCkwparfwe3JuazIfoXpHMgQ
 351IZIf2uqAZhZrTGPvunCFzGU4UqsDVyoxPDCQ9fVkG9jJZfLBzQ/6W3gsiolLJFq/k
 FKfxmDGdjg91LzyXSlJhJ1nHhKPshQIsxx1BwS0VF4Gpv7uPivmXPY5lPNMfj/hGcOFA
 t+fzjhi40zVjV0KsOWkOqVlk4Nf0U7XXUuFeX09yf9uKy4ZrDvC/5VrRx5kf1M43GYff
 /Iiw==
X-Gm-Message-State: APjAAAVJ8uuUyEa8TjO6QYGVozMy4ly9uR/d+Dp9RVOIE38PfONxPLhI
 VxtD/85L9IUOp3jnleCung==
X-Google-Smtp-Source: APXvYqw4tg27DOTO+ilupZjHUfUpz2Sf7rFACQOxDJK44IZFRl4/ElfBF+Wwbk3Nyc8kNUvRcmX/Yg==
X-Received: by 2002:aca:abd2:: with SMTP id
 u201mr12259123oie.105.1570805443172; 
 Fri, 11 Oct 2019 07:50:43 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v7sm1182819oic.9.2019.10.11.07.50.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 07:50:42 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:50:42 -0500
From: Rob Herring <robh@kernel.org>
To: Laurentiu Palcu <laurentiu.palcu@nxp.com>
Subject: Re: [PATCH v2 4/5] dt-bindings: display: imx: add bindings for DCSS
Message-ID: <20191011145042.GA15680@bogus>
References: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
 <1570025100-5634-5-git-send-email-laurentiu.palcu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570025100-5634-5-git-send-email-laurentiu.palcu@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_075044_205777_9B0BDB74 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OnU/d2M/P201P14/456+P300LT8/entiPz8/cj8rP9eAdT8/P9inPz8/PyMXPz8DPz9layA/Pz8/
P1c/Sj8/Pz9ePyg/Pz9ofT8/LT8/entiPz8/cj9aPz8/Pys/alcuPxpcP2/bindiPws/dispPz8/
P2x/PxpiPx8mPz8sPyY/P86+Pz8/Pz8/Pz8/Pz8/Pz8/P1c/Pz8hanged86iP8erPyonPz8reT9e
Pz9eP006Pz8/cumentatPz8/dT8/cT9reT/bindiPws/dispPz8/P2x/PxpiPx8mPz8sPyY/Pxc/
Pz8edT8/Pz/erj8/Pz8bP0c/Pz9oCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
