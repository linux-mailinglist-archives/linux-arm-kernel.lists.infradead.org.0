Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D07199C11
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reUfEx5yukzCnwwwATGtKq+9V569iXD6VWajtDGlpr0=; b=RY0jHtX+AkqP8h
	2QO2h7COav44FKAFP57k/6pMJmxTetg//r1acmDf6Ffl/dtR3ZEipNcsESgijUYQnkysnExn+3WPr
	idRVWHQzdk30bmhiQ9uDZr6ELpGaVjcnVS9ylMN+sQAYkyXKT/LQv9LQXbDjzq9fVFolr1T470bRa
	v3FpctKAiDX2az0AbMShhtUP9CxupQis495Ly+3ioee7R0qQJLp0RClXrIsDXJGO/QqOajiOIMqBQ
	bG4cAwLvYqvrOKIQIJue4mcGSx4T3VqaJeTMwU4yIpnt5AelylTI2Rv2g/PyCGsRUQ7NE4/xdWkIO
	bZfATqTmAOzNsO0FbTAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJK5C-0001ao-Ui; Tue, 31 Mar 2020 16:49:46 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJK56-0001aU-MH
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:49:41 +0000
Received: by mail-io1-f65.google.com with SMTP id o127so22449087iof.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 09:49:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3QwrQutvISOdwRt5xFRlvMoy4S4i7e5APKKFlmWfPlI=;
 b=IMqvva88eqleSmrEuyLltVylc0qsC5Yjga10LL71EEwzcNk+nRt3kYJeQQq3We1+Zl
 I9XZn0ma2hWKVXWgnQb43Sy13nQqdoJkPn8Sh+8zoc8ylr3dsl3eWGeR3khC6u76RQcT
 C2y5SzmoxKDpZ6BE3e0e5qXcsR1sJh92NmbNhtq8K0/TF1pjTv98AhdFVSbRiHM7mv/5
 lBfs+if7rlnQ9a0kwXPqPd3GUOdQv5IIOFG2R9eb/hFTI6x4CyiV1px2zA5ZQ8ytSuQi
 rtJ/801W4X9PUCAFxFx1mOy//sj5JUUpfFbXzYfVhNKBCGkGSVOl7sK2oJCBo+MW8Nkx
 Pjvw==
X-Gm-Message-State: ANhLgQ1uhmXS3o/mAvBBXMwXN2KM7at6EXjVPbV8RM5K1I6QhtqTNqC1
 1RO9yOSjIxj4Asbh5+ytRA==
X-Google-Smtp-Source: ADFU+vu0uvJu27akUkqWds8x0YrvgBWePU3mk/Nwbnw0BEYSzZyw5fX/kIW3WxqJWs3yGGKUbPvnEA==
X-Received: by 2002:a02:5a82:: with SMTP id v124mr8013603jaa.132.1585673378445; 
 Tue, 31 Mar 2020 09:49:38 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l17sm6133742ilf.28.2020.03.31.09.49.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 09:49:37 -0700 (PDT)
Received: (nullmailer pid 20383 invoked by uid 1000);
 Tue, 31 Mar 2020 16:49:36 -0000
Date: Tue, 31 Mar 2020 10:49:36 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v5 1/6] dt-bindings: mfd: Document STM32 low power timer
 bindings
Message-ID: <20200331164936.GA18783@bogus>
References: <20200331083146.10462-1-benjamin.gaignard@st.com>
 <20200331083146.10462-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331083146.10462-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_094940_723599_C8F6218E 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de, fabrice.gasnier@st.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 10:31:41AM +0200, Benjamin Gaignard wrote:
> Add a subnode to STM low power timer bindings to support timer driver
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 5:
> - the previous has been acked-by Rob but since I have docummented
>   interrupts and interrupt-names properties I haven't applied it here.
> 
> version 4:
> - change compatible and subnode names
> - document wakeup-source property
> 
>  .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  | 34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
