Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D56C1D7218
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+A87ddklV5XnEmGWtg6NJpCmJ0iI5PBXchwenWUbQ8=; b=Q56yh0iA1LFivl
	+egR022woJ79qTtF9s9QI0tTTNcKkk2kIvb1wjkdwRPk27lcLkNuscy7iSUmn0yDp4ZQOz0cPlxn8
	hskV/QJH2reFIqVnULioXZ7lz9pKMCWXeyMk7/mVXKfTsVI29C9fDynlJX2oXLGMLcbKZ/qOn1dOa
	hjnHel5aniTsopncBBTG3chscqjqpMSXb1sAHahWCug826V6bN/AsGHu41HB04f+OaK7YBBi3ehPH
	INr9eoq3l59/M5DOc51rJ1z7F5GK7b3eg/NBbgRjb7xiLMaEHfWS6rIhfnQ6rZL3n7SJ6ZHE6eczd
	eZwlnqNYXtICc1l8S/1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaRG-0000q5-TZ; Mon, 18 May 2020 07:43:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaQv-0000gV-BN
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:43:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id y18so4571630pfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H6Fz3grvmOGwKwIiO4rhQMwdNkIsWum4LGUtO8Cm5uw=;
 b=ewfOGWB6Q7IULYGZK2jjnw3iboiuUrKM4DhV+jFlpFQFbRA5okIM4q8ZPinJzBHjXj
 mZ8stSwg+I6/BDqQjXwU4TW+9EeA+Q7dqV33iVJT0cve85sXWZG2GKOpnbC0nazeavQW
 uD2K/aYltBH+aRgSHhQ1GL6tt1ZIiWAL4BbjgulNzJDXYao6iYmk+zspziWyeRWKizew
 1t4Gx5iG9noNUfjxFQFcIDzuUeLU5VzKWkU1jnKq1/hM4tpV42WBA0gJAyuNTAXhKrFY
 RYMcv8p3mlOBIESVYnhQ6bKiAIpTClAWAFOGYdQn8AgUml92+/lQy217nSP+eIF6Mf1L
 XuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H6Fz3grvmOGwKwIiO4rhQMwdNkIsWum4LGUtO8Cm5uw=;
 b=P9HVRj29rzTpqb1BoeLDBMLpiThY7uB44uRNbYxtlNilCLmAevfhVBsMIvaEgFUDv3
 hKNKO6xH5q7L0mvcO53bhVzqNwxQU8KjZeL7YLqNVcwsoSs6dBzpUnmnXOSGWze3OFhk
 9UMX23qdu7ycAVt+/H1Zsk2dnMGLq7i14i2afAJ6LbuDTQzvzKSXCIgjoYhzfc1YAiXe
 QiUobmgsa6f0l7xgFKuGFQddLS/YuSgoGDbawpi2gA5D3h0jkueT+6Gbwj1S4t7tZ5o4
 rji1Tdy6IMQs8fW/t0VUrAr4uUN5CFTKykUyEQrsvIn6V7U8a3eTMc6T1GGkZsOKx+KS
 cfUA==
X-Gm-Message-State: AOAM5313v7iewGtxFpIaAlHoN6g4rNW120/CAQ17HW83KFTMdjvZxrQU
 gO7BuGMiF++WNJRhQ2GRrOM5/oBE2+s=
X-Google-Smtp-Source: ABdhPJxwPIzeEsdVfsAIZTCk/Z/xP8GEG1alivNq3g2OZ4I1NIJDYth9EiNk49gcYQ9Lcgb+XKFKAw==
X-Received: by 2002:a17:902:bcc4:: with SMTP id
 o4mr13873074pls.275.1589787317608; 
 Mon, 18 May 2020 00:35:17 -0700 (PDT)
Received: from localhost ([122.167.130.103])
 by smtp.gmail.com with ESMTPSA id b74sm7021330pga.31.2020.05.18.00.35.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 00:35:16 -0700 (PDT)
Date: Mon, 18 May 2020 13:05:14 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200518073514.tjodf6qxg3wjzyb4@vireshk-i7>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <CABb+yY1wJMzakpz0h6ZxAh4Z3OB718f+Wq3RP0R4NZ_U=vRMkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY1wJMzakpz0h6ZxAh4Z3OB718f+Wq3RP0R4NZ_U=vRMkw@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_004333_470344_BACFAAD2 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15-05-20, 11:46, Jassi Brar wrote:
> As I asked you yesterday over the call, it may help if you could share
> some numbers to back up the doomsday scenario.

Yes, I have already asked Sudeep to get some numbers for this. He will
get back to us.

> > - With the current approach it isn't possible to assign different bits
> >   (or doorbell numbers) to clients from DT and the only way of doing
> >   that without adding new bindings is by extending #mbox-cells to accept
> >   a value of 2 as done in this patch.
> >
> I am afraid you are confused. You can use bit/doorbell-6 by passing
> 0x40 to mhu as the data to send.

That's how the code will do it, right I agree. What I was asking was
the way this information is passed from DT.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
