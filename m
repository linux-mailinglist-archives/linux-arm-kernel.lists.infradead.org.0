Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A29A17520E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 04:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAawtDI4gmeLgObeuI0XX64We0qnE6Mox2ftHZ6OBlg=; b=fX0AtykWiyd+Lq
	yXlC3yjsfRgQWAgxToLBuu3I5/kN7UTJ2BNg7nzoittlhcKYUxZDOhjITj3m1wsWtCtZdZj/uwyL/
	32B0AzymIR6ke9G+ccRJTM/yA0iHkdPEHTy5W46LIYaZa54nhNwADU7rzoRKaOLsNzemPjpbzagMa
	mgO5xvPv1VqXD72BCiKkFaaTTWvdGA4HOuC7ntlIRXBwi+kTex96E/jl4bmovtdSG5lhPfk00CtaU
	2mrM319Q+LgHwUEOtnWsR2eZmVmHa3sl3f8HQpH5WDLkgiDQ5CG/RD1vN9pk2v1HxlZEOOA5uMwo+
	ZSFU8CKl3YVOdNGIEoJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8bab-0007H6-0q; Mon, 02 Mar 2020 03:17:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8baR-0007FA-Im
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 03:17:45 +0000
Received: by mail-pl1-x644.google.com with SMTP id q4so3617532pls.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 19:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8t+bQd6no+vX10KNUG8W7BdljgcAWDogKvSkBi86nEg=;
 b=FjSlalKmJ4p8dQ0LbDJlifEuPd4SgK3/W8fL1DZ2whuL5Vy3rP2M0bOAeHK3avA+nf
 ml6afV1CVr4XHuSgitl7PkrNj8xZ6ZPWX9F+TaBTqqOnUp6NcCCIuOK7yKG8IVfzdnNf
 8TXV4JBpYd+Y8a6MKGvP89i8SIaFi//CEFTcuaq/o2/H5ofU4FPHhBKxkP4xmjpN+2Ta
 f/lsKPYmYvz076FJAyUdt/acEm6Mu/J/2Ao6X3o/J4aKm5VuqM9CXBqnWbh4Wz/c1RVh
 1ECtmTildGwa2y5NNZx+czWG1gKpGtaNbnVb488Qac+xCAen8RG6PUn0D/MrwDYFQTjY
 w1ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8t+bQd6no+vX10KNUG8W7BdljgcAWDogKvSkBi86nEg=;
 b=csqGWgM96sNHxBxGfgMLCyPaTf14mLNhxEpw761vpujbsfbAlWFjJpehtKaGX4VZ8b
 nhAeMItcQkNI/fZDTCHKGWEsN/sku3a/TyturwNYTlJOjNPPZr4rk7s7oquo7UR32vZF
 baPBWEvoSiEyxeVOD0GknjMAWONRaqyOgL1jTeL1UX7KlOYbChq3AodOmUgEEZja9Bjp
 AB90BVGHyHumGo5ZmK2fDHJemT4RXF6fc2DZO+2jD1vrIqJe9Um+vcD/d2yJCN3BMB+v
 ElSJIyJ1u7VTT5YaTsKXvzbgiCuNuY2ZHH80LzDRfhOnaFmaQqgpIVqk/sfgoobMvALr
 yyRA==
X-Gm-Message-State: APjAAAXWvvmOo4UDXfaKe00UK2wlrIyn8pg+n1KHDNB6tOJTJ1GHwT9j
 kPpi+LCNqJ1Sx1e1PfErjyU6bA==
X-Google-Smtp-Source: APXvYqzMb5bbHpEUw52CKGpM7wwm1tYj6NFor+t791LteEmnzNazAM/gYuWof2qUwGBuXCPYShXWQQ==
X-Received: by 2002:a17:90a:c214:: with SMTP id
 e20mr18478282pjt.98.1583119059840; 
 Sun, 01 Mar 2020 19:17:39 -0800 (PST)
Received: from localhost ([122.167.24.230])
 by smtp.gmail.com with ESMTPSA id b18sm19054466pfd.63.2020.03.01.19.17.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Mar 2020 19:17:39 -0800 (PST)
Date: Mon, 2 Mar 2020 08:47:36 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v3] ARM: spear: replace setup_irq() by request_irq()
Message-ID: <20200302031736.5or4ww5a4l7zomfo@vireshk-i7>
References: <20200301122315.4240-1-afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301122315.4240-1-afzal.mohd.ma@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_191743_685819_CA570A3B 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-03-20, 17:53, afzal mohammed wrote:
> request_irq() is preferred over setup_irq(). Invocations of setup_irq()
> occur after memory allocators are ready.
> 
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
> 
> Hence replace setup_irq() by request_irq().
> 
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
> 
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>

I think I had already Acked it earlier.

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

Please get this through Arnd directly.
-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
