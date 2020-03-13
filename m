Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6047A18436C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLXT+altzgAGq9k4H6Y3FrQmkopKbvoAAUqmAgTNBWg=; b=Sx2Q8Xqi31KdnU
	qvHYMjmw3sK0PBEmAuo9ZelqUj4wgB+V7QNgucr9Kj/30lmRzeZUl8PbJLZSEnSMg3itRwkUhxfIW
	ESvOEEqbf7+wVQ6/JFuz3RN4Zhkn4V3z99Loh/a9sgmW1t77wHxqZ7sHpQdd3ROn6Lk+VSiWvBcSC
	l6CfjOyFCY4IVAE2guFA8w8LG0j9238UUAKcfMD5ZMb09pakJzXI2bVbZuY7VZkkQ7ceP9iTeYJwR
	hSXkJD2DO8d6El19X57D3koL0XXblwTzOJH4R+EMUbx/pTHREF0Wk5kNMbTrxIGmveg6E4dZfkxlF
	gA1DRj16Yg0Beg0sd/+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgNA-0001ye-5t; Fri, 13 Mar 2020 09:12:52 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgL3-00008L-OB
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:10:43 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l36so3836096pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JtkM+yZ5+lxvRbR9JLka9INk2b+8sAQT2vc0MdMcdF0=;
 b=R4Eg+CqTJ0CA4+mX+Q0HT1tcnR6NS4q4j5dn6d8VDy7Wz394wQUwvT/NaDJrrFoRkR
 O4/q4o8nR8aYr9LiZjCjS7mE1Zfot+KRD4H1e72uNXjMpENOJ3vSrzA5e/rgHS2aYJt/
 BaKX921yAoqhLuHWhyjVZwWDx6d1rQow8LiWogRoqoq5Ed1jrZ5gmHxTleTjyMQZ8CKs
 T+ypxEPiziHju+YAqbmPXZgW3yTKrcT7Suk/VWNVnzOZBXvpyetDTnzJ6oSWvSHDjPYA
 8QMe+yOkIm+I3kT1Poq2VSQAD5vtvUNRuCXLrRBzA4wiXWN3t1vy/UNExwtyBq89ThAc
 hzzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JtkM+yZ5+lxvRbR9JLka9INk2b+8sAQT2vc0MdMcdF0=;
 b=fDfRyNos3ki1GNSvonzbPcjmL3hyxKSQr/I8sW7NrQWCMp+bOqkQfv7897eAwVrHLg
 eoy+iUkFzOsj7viakwk5QA1/Vq3WcPC6Cup3YPSeZ/zzjWP1Kd1c1l8n81BPi4/erIk7
 P2ylZHGRaraLoa/7HfaxozMSslyWRW2mH4C8fmAAw6hIg0z4iepbOGEGO+X8mgcBRwZk
 E0xQ5uw5nlk5gi4tLdXgX9rP+Mzr2ip+fym0PKZNBwf0A6Nefqdy+vRGeO+5R4D1iB7Z
 utt3p0Cw9cXSmpoUmv0wonyTXv5UQ3yUNrmh45tmhUv1XHpmEfpu1e1oMmr52QR8+lPP
 nXIQ==
X-Gm-Message-State: ANhLgQ0BFIEhu3hBDNqytF8ynQDi0+5HLcCbZN+WaGpJsZbUU8jyiq9U
 rCJV5JtJUSMC7tzHBcWx14p82Q==
X-Google-Smtp-Source: ADFU+vueMkKxf9i4W6oJIJHRrSOEaNDdoKCVYBJIRGmkg6vmX/eRdo6zNqs5xJmNtBnSly4IqRo2Fg==
X-Received: by 2002:a17:902:7485:: with SMTP id
 h5mr11624298pll.13.1584090640801; 
 Fri, 13 Mar 2020 02:10:40 -0700 (PDT)
Received: from localhost ([122.171.122.128])
 by smtp.gmail.com with ESMTPSA id c8sm4233902pfj.108.2020.03.13.02.10.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Mar 2020 02:10:39 -0700 (PDT)
Date: Fri, 13 Mar 2020 14:40:38 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
Message-ID: <20200313091038.q7q7exiowoah4nk4@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
 <1583827865.4840.1.camel@mtksdaap41>
 <20200311060616.62nh7sfwtjwvrjfr@vireshk-i7>
 <1584084154.7753.3.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584084154.7753.3.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021041_846504_5021713B 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-03-20, 15:22, andrew-sh.cheng wrote:
> I have something want to consult you.
> For your previous comment, you suggest use read-write lock to replace
> mutex lock.
> Will it be more efficiently even when all are write lock?
> (all lock region are "setting VProc voltage")

The data to be protected here isn't the VProc voltage but the list of
valid OPPs. My idea was if we can make the target() routine run a bit
faster as it really matters as it is called from scheduler hot path.

It won't be wrong to use the mutex the way you have used it right now,
but I think the read lock is much faster, though the read/write lock
is more beneficial in case where there are multiple readers and fewer
writers. The target() routine gets called multiple times here, not
in parallel, and the OPP change notifier won't be called so often.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
