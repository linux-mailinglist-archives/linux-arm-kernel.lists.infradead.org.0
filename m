Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A10D01E06CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 08:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXTo1Hf1QlqJ+ffyXH5jK6eUJxft+esNg6JUrQbSt6g=; b=LGWKa5NNAB5/lB
	5pSCYQ6slYAbgB/VWMaqChyLywDOSAB8t3p19r3ObfaM+5Jtvi0PgF7ECdffNuf1kEPGaRPZCj7BQ
	JimioWuWZuAdgpfGq/Pe9mnt1dzAV4aJCaudpB2Nx2F8k9SpTYYwlGBRrwHr07UF8zLunO/s/1FvG
	xW0yqmrgt/H1BChTQPGa5SsnCyTDYs9SEBKZfNYjvTuN/PBW+OB+xwI4U5Mo2SBogVgM8ktXRBxpM
	N+YCtfjrgKvuVFTSscQOukzNdxx+0lrD79zkFf7HZyFI3nYXHcXYrReWN0UG2TOW2obphIy3u/Mdc
	mjb5tnTCxYHTbclxdYPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6Pd-0004iR-Rf; Mon, 25 May 2020 06:16:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6PT-0004ho-PZ
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 06:16:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id s10so8285584pgm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 23:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b96SL8+sRaQd4BNuO23oq4bmCu1x+cpwG9cm6rdCDA0=;
 b=viFVpiWHuDc+z9efiUkJdmh0VIDdJhkAiST+Q8beFUNnLgWtubZLHcJRe/qLLGg8Ip
 oTS8O5XPHQs5ZVa21IJrk9t5LGs94tYmAROm9iFn1gJg9EDp/ugeFILzwEj705KEvBGw
 b6JOOJ8Nw5uv/ziocgKDzhB84SwhMNSQMNaUAF+Ud1gvxPqt/eCPKpnOQcblDZXukU0k
 +YBUM4j7kZBcaRI3PmXwDJ1y1cgi3Lpe6Krsm8Hb3yurUa3b1ux8WWYM8OKxnhdxfQ25
 h3j2njsqK4+wVLtpj54w7bo2yq5Pakh/CDS4wsnvE8rqEgH2ggXaQJ6GUB5Z+zZZcTX0
 lA8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b96SL8+sRaQd4BNuO23oq4bmCu1x+cpwG9cm6rdCDA0=;
 b=EWlOhWEg/6JbBoJCbtRSzEcowszx/DznoUs3Vcz0bBxuk84eCHzXsFxoAosE9IDHeY
 /8P3NPiCsdU7cZ6b6qhQyOT1CV9G8zbAc0J2nrsbgPkTOV1gXPJlRVSZhvYK+/AgOcX4
 hB83aNOxzUQdFsVz8NnMHip4yHoWSGqhvMjs5cvszr+dopAsFrRubvXIcJo4t/BbeIs4
 mthauMYIUxBOExDNnLYI//TlqQoy7vg7qq+yJfKb6An3DrHp1NonoqWg/qjYjqpap7eo
 Ght5778gk8w3KTIk3rYhMTaQ6f0RbvPD7KkcG4f93PuSCAS/zwk3IeK0BEPrnM/igBCY
 4YwQ==
X-Gm-Message-State: AOAM533BbUfNyePlaoRztESLPr1LGberlqqbgaklgg8WGzI1m1AaNKJq
 vPzxDNhel5HvIke+caWpn58V82cTBpop/Q==
X-Google-Smtp-Source: ABdhPJxgBcGXY7WW27C6rn95w54bsP+6x+NYWWLJeYwxugt6XN3ID/4qT8FuaL3vxAeluC7dMnrvaA==
X-Received: by 2002:aa7:84c6:: with SMTP id x6mr15776442pfn.46.1590387386501; 
 Sun, 24 May 2020 23:16:26 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id v1sm12380566pjn.9.2020.05.24.23.16.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 23:16:25 -0700 (PDT)
Date: Sun, 24 May 2020 23:16:22 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jianyong Wu <Jianyong.Wu@arm.com>
Subject: Re: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
Message-ID: <20200525061622.GA13679@localhost>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-11-jianyong.wu@arm.com>
 <20200524021106.GC335@localhost>
 <HE1PR0802MB25552E7C792D3BB9CBE2D2C7F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HE1PR0802MB25552E7C792D3BB9CBE2D2C7F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_231627_828434_289E3ECA 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richardcochran[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 Wei Chen <Wei.Chen@arm.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, "maz@kernel.org" <maz@kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Steven Price <Steven.Price@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 04:50:28AM +0000, Jianyong Wu wrote:
> How about adding an extra argument in struct ptp_clock_info to serve as a flag, then we can control this flag using IOCTL to determine the counter type.

no, No, NO!

> > From your description, this "flag" really should be a module parameter.
> Maybe use flag as a module parameter is a better way.

Yes.

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
