Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C81A12DBC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 21:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xe/tcdKS+/+U/EfJ5zEvBXPR/r+vR4nG01MfSTC49Ko=; b=oGEVj8PxJTD/eR
	MuO01i/jcZBOUZN0Jv6TIQS+Ap1Cgn/F2cNJVsxk/xHGVCPY88vmS+88e/BZXzPTLdcFnaGnHKaB8
	5W2zhVe7FbIWzeQq0GVTtYlRWEJTXY3OyBlvL9W1GK7dajKGOp3h7a8Jyv1ccbSHTtX+ECZcajUHq
	Ud2TMeFfhhLl/wzdkhG87r1sGyw7rDMxUIYvQkc58zZcECIoGU5ydi6Rq+4E38a2+ecRqdXK8oB6F
	ntZjX4zuLjDLiDZ2QmF8hu8vVHlYs9HYkt6vgy4o5NNdEt4VK6Xb+JsQZNSxJSe7+Bi2nwCHm/Nlc
	Td0DsnwG4FY2jGf+GcfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imNpq-0002TJ-N0; Tue, 31 Dec 2019 20:09:46 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imNpk-0002T0-0B
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 20:09:41 +0000
Received: by mail-il1-x141.google.com with SMTP id z12so30843574iln.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 12:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iMq021Q6rh63I8HW48j7kZEsvOhOgIZ1P3FZVqzZ6gs=;
 b=NL9WDD4etkkaMu8o4/dZyhklcox08jitUCc6ApGajt0g1CT75OqTdEm20laAlLM+2W
 DYN98su9dPkX9FoAB6DyR69f2A3wDWuevmMDq0kSkkXKrRze6i3nxiLTMUOobg8Jwjb0
 n0mezUNSThxFYUzfxRb+LpPFsPOrZ/62BZC8R1lfursTX7eoU8PkF7w5uR6wtLQ8cyS5
 H+rlblyYk3NBI89zMrTgJ9IpZmHszxW2mdLsSorWcaIDo/HzCfWSNaAt3C8HQroIYxVe
 /QDzOQZgHgXqSUzUJafbn/P1tPn1E2uB6dXxjSn8Svn+aqUb4LDQHmTw6Y5ToynJ3BHY
 q23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iMq021Q6rh63I8HW48j7kZEsvOhOgIZ1P3FZVqzZ6gs=;
 b=hlzh5dyNeQSstQVsTo+01SEPXCqISvMY2NNSySkMo4/QhI36kt+BeCXS3xdIkwFMSM
 edl73FbGg4GWA/w30f9cxT7/4zWgsMKqYCJKr+35s6obkbCd6CKXOIP9Rk7F4jg56Z4e
 BAZ9/fh7UkXyjksgqdQpVMZdKnx5qw2kW9EHptTAfb4+K6qGSkTeIT1ewrXaAsWYGyP4
 iZ6+0T4Xwgo5itDeE2bAj5hV+J9lbrf7R/yC1KzrGLku9NRZnAzWYT9zbQcf7iIpCtxs
 qT4NsRr2Gk/uoYAZ/lBY8nohTUpqlzsyH2jm12uCj7fMTOm6pxH5MhMhRqc558EqN+RO
 XIhA==
X-Gm-Message-State: APjAAAUjfFYnWpfJr2YnBDrhB1n4NpjPoOKRZ1weLD1S3Rb3G4rqaubF
 8sniJFeJnQ41gQeQoZYleZuaS1GJnnPDxBrPhtA=
X-Google-Smtp-Source: APXvYqzWKYncZtJiNoouaDYXXOYbH4WHkENN/PJ9VURiiLNO1UznOkEcd0n2TVRxmtVo9Y4DmvTPhVEoc44I90W3rOM=
X-Received: by 2002:a92:4891:: with SMTP id j17mr59752468ilg.33.1577822978611; 
 Tue, 31 Dec 2019 12:09:38 -0800 (PST)
MIME-Version: 1.0
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
In-Reply-To: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 31 Dec 2019 14:09:27 -0600
Message-ID: <CABb+yY0qh-qWJWxEaB9_XxmiFb=xP0hOxpm1j54seeT3dMKt2w@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_120940_045782_16F1CF72 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 3:32 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> The SCMI specification is fairly independent of the transport protocol,
> which can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent of the
> mailbox transport layer.
>
> This patch makes the SCMI core code (driver.c) independent of the
> mailbox transport layer and moves all mailbox related code to a new
> file: mailbox.c.
>
> We can now implement more transport protocols to transport SCMI
> messages.
>
> The transport protocols just need to provide struct scmi_transport_ops,
> with its version of the callbacks to enable exchange of SCMI messages.
>
We can either add new transport layer between SCMI and Mailbox layers,
or we can write new transport as a mailbox driver (which I always
thought could be a usecase). Right now I am of no strong opinion
either way.  Depends, what other transport do you have in mind?

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
