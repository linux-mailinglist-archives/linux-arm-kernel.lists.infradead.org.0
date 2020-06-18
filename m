Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5B51FEB4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUeQeyHby1etnJEB9CMGqh1XCaLbr/LnD/KbNHA1Ct4=; b=hZJL26sFSm51Jm
	zg3z5mA8jy2YMjtyBrDSXU6r0BF/nb/+xPAVg4hDJV8SutVTMCLkq+6epEtswyBTnJoHMDWGS5V3u
	QhKzWcDuaYiPZckmElcMl1bMVup1pZtcyjTvrDbcOeIhsUZ+/5to1NDjdPNTAzXslumRpnNtKq9eY
	9b3aPeOS92frGvQywukSCNET/tVM94fDEQ5YJ/Hw2fOnEx43lUgEbiRb049girR6g5u2Mp5/8sdm8
	HwqDLxG50z0Rhl37LNDnseZCzD3xkbbpbVpsichbcK4BvdHQEfr6/BDFtXep0u4jfPAbc5KWcptPm
	H3V+zFZKC0fimB2dHe1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnop-0005OM-Jn; Thu, 18 Jun 2020 06:14:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnof-0005Nr-D2
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 06:14:26 +0000
Received: by mail-pl1-x642.google.com with SMTP id v24so2007349plo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 23:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9qR0fuoqIBy0xUAm2ITtA1DoU0HgxEgx3YBhTm/3Gek=;
 b=j5W1UFSmkVhTt7/aLu+Byy4gWGen8wWhvgWZRToHhZS3+p4zloJZgwWyU6X7QkGagZ
 KkPK+JeL+QUF7Z5xWGU9ZLRq8HzH7LmNtPKB/tGZyjA/n5xQeWRs+DGYiYgEJcoSoN9T
 aTXyVSaMrW2VWoC2pqXkVaTeErWrzJ6UUTFnO57U2oVwMmtqExRPcSfR65E4AOnHxW8X
 6MvFC2YBrWgfl7z3rPrFfTa4ZZGWd/whgnn78dlKw8Fm55IGCtlv15C/U6Z/iL7sek4p
 agPvgixAMciwE7dz0w8i+SNYxsQR+GbIUim3y3IBDgA5TMZCm9ynoyrq3+/F/AqxK+06
 +vhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9qR0fuoqIBy0xUAm2ITtA1DoU0HgxEgx3YBhTm/3Gek=;
 b=BEetV7dYnMDHw6qTBfWpBCHhUXfpItOJWiTYIz+oaA5jCcqU98p/+gfxEl9cyFEYeW
 Dq29Yo845Y7SYfbi9Z4VyhDfUm41yCGBDSdQXwxqb4lTAQqLoy9G7lJMEaCb39IUair4
 /rHLIa62kPy3C/WK/YDfdM0mJAdARInA0MN73r2vofFInllGrkh2pOd0iqD1LaoRu0A2
 QBV38oFlMq/1q7CzS9gFmax3qXtr/zR2xvI97Nozl9ypM6EuqR2R+iIapZ+wvmJxb+qE
 0MLuqHP5ql+vAe1kei7T/2dhSzKIEYiy73DCODSUmEhZRV1UMvm98SCjv6htsKw0uloT
 mMHQ==
X-Gm-Message-State: AOAM532BQoLn3bTxIQ7uBSb/0/sObO2mwPaSGSUIfcQeqqf75biPHJir
 VJxWrMVYXc48+iIRb8V3CrHXMQ==
X-Google-Smtp-Source: ABdhPJx1/jxhXBS8AN8LHrbnqRktjYWNTZxxEd020DnwsWjMOLk/3LSKicpt+yNaq9ciJ4xxgJmn5w==
X-Received: by 2002:a17:902:b403:: with SMTP id
 x3mr2394513plr.240.1592460863990; 
 Wed, 17 Jun 2020 23:14:23 -0700 (PDT)
Received: from localhost ([122.172.119.132])
 by smtp.gmail.com with ESMTPSA id r132sm1689881pfc.96.2020.06.17.23.14.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jun 2020 23:14:23 -0700 (PDT)
Date: Thu, 18 Jun 2020 11:44:20 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 2/2] cpufreq: arm_scmi: Set fast_switch_possible
 conditionally
Message-ID: <20200618061420.5q7xsldakax2zro5@vireshk-i7>
References: <20200617094332.8391-1-nicola.mazzucato@arm.com>
 <20200617094332.8391-2-nicola.mazzucato@arm.com>
 <20200617124753.GA15211@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617124753.GA15211@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_231425_477074_9372F6F6 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Nicola Mazzucato <nicola.mazzucato@arm.com>, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17-06-20, 13:47, Sudeep Holla wrote:
> This is first step towards avoiding polling based cpufreq set if firmware
> has fast access registers that bypass normal mailbox based messaging.
> 
> If you happy with this and provide ack, I will take this along with scmi
> changes via ARM SoC. Hope that is fine by you.

Sudeep,

I am not sure how it concerns me frankly :)

AFAICT, this is enabling fast switch based on some mechanism (internal
to scmi) and so either the cpufreq driver will have fast-switch
enabled or not, and both are fine by the cpufreq core.

And so I am confused on why my Ack is important here :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
