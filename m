Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C6895305
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 03:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qtp9JwP0nzOcns+cpVwuzx27F8V+kWh7x2phms7NcpU=; b=g5p70eFzOXki40
	S/b1PERmSGTVGo0qJrGfBsfEMq6GJc4/mTmOKdtncEaGGmPqKyQoUjSf4mANalRKpsuMKAO4S+QMV
	iJS0RX7B/ND64Q/N+UpWo8pLgqRlUifQ2OKzscFYFbErm0FG9SdwbFOCWcAP0DR1XsnSx6wlk8DCj
	Vuqh755YV2DOpo+qg31IOe1DRcNDERo3ZtDgvh3mfqBpuvPX5ehrrG7QGFhaAuGSRpDE/QYGqmby8
	KaqRRs3QYtIJWh43JzDkS6SAQWhO+XEKeIVRijL6LFcwlol+tufq3cN/Pn8hanhLVv8g5wpf3qCbg
	3t5Dafil69uk6Q35uUEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzsiB-0005gp-K6; Tue, 20 Aug 2019 01:13:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzshu-0005g2-BD
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 01:13:09 +0000
Received: by mail-pf1-x441.google.com with SMTP id 129so2258450pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 18:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gcg1TIyUzFxxlA81LjYIRwKVzD7/bL5EZdTOuDoC+1c=;
 b=siW7/+ZlyyfE9Ou+gCBx8jZsWAQa1gTwU28gp29cwjqVTx1Lgad/XphN4RlImfDdOv
 2BQlIBiItdFsWt/pTfsAqg4mVD9zbX7lIo7ivlWDalIykDndMqvQ5MQIjmMCpTq4Hsvp
 3SnbKloKR69uZLKl7VpSyLOaJ12YlKEesBZOn2MTWwTJJi+6xqBo10ZeDkeUteptBWA5
 YXGTjkGaZkOZzEmy1uW4ih1Qwkl/QjvScQ2FQBGiVHz8SqLRXjCI/eSNB4vCMPlwMT+h
 hs8ZZcmLL+OFda81pzOsomKe7q3/wHBTwSd/PftK7NpqEcZrR+RWov+wVMY1akw/Qq87
 ndVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gcg1TIyUzFxxlA81LjYIRwKVzD7/bL5EZdTOuDoC+1c=;
 b=kn8Fa+HmWo+LvCS6Du9+zSD8rjip9nib/R1XceGVf4VBZpGQ7+bAbHYgzqNqTbyNH0
 W64Ximde7aAX/9GzYgRB7e9WXV1mFmkW4xARJjYhx6G6J2t1KcX9a+UhjZO0gjrE1/KQ
 JcYM524IPZAZMaK01QJtY6fXvcLF7uULXHysJ7mdoLIGz2k2RSfZ2xk7yaHuDHI6xQ1/
 2BUilAvM245DxYwXxHzEj9p5KYPVIXpJhvjsPVl7uZZCfl72niHvOI9i2t69dCOOUF9C
 Z8rHJlhfV1gMlZD0iWQwvhsoZ7SAYscRny6HIjIYCuRbDRhvv/n7SHlECm2S/oa15VZA
 8HYg==
X-Gm-Message-State: APjAAAU25GUX/G1eafSEEEaaDBKlWjwTQzsi9OJZz/Ihw0Vq0RJJELPs
 0XLEEAHVCB5tB1BDtc8GZPvU/rIeXAjdng==
X-Google-Smtp-Source: APXvYqwwQuqYwKcfAJzTL9vULrGYrNn4rtFjGuXSylssXZm/xWw6CZLfZ0JVnBWWZ/ZKFRtRSBVZpA==
X-Received: by 2002:a17:90a:9f4b:: with SMTP id
 q11mr23242647pjv.105.1566263581995; 
 Mon, 19 Aug 2019 18:13:01 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com.
 [50.116.10.16])
 by smtp.gmail.com with ESMTPSA id h42sm2712377pjb.24.2019.08.19.18.12.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 19 Aug 2019 18:13:01 -0700 (PDT)
Date: Tue, 20 Aug 2019 09:12:55 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH 1/2] perf cs-etm: Support sample flags 'insn' and 'insnlen'
Message-ID: <20190820011255.GD5599@leoy-ThinkPad-X240s>
References: <20190815082854.18191-1-leo.yan@linaro.org>
 <CANLsYkx5TanDyztpceZvwf4pZSgoqRMOBgiHcdJxxpnGA9-h-Q@mail.gmail.com>
 <20190819185054.GB3929@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819185054.GB3929@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_181306_390854_B233D583 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Robert Walker <robert.walker@arm.com>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 03:50:54PM -0300, Arnaldo Carvalho de Melo wrote:
> Em Mon, Aug 19, 2019 at 12:08:26PM -0600, Mathieu Poirier escreveu:
> > On Thu, 15 Aug 2019 at 02:30, Leo Yan <leo.yan@linaro.org> wrote:
> > >
> > > The synthetic branch and instruction samples are missed to set
> > > instruction related info, thus perf tool fails to display samples with
> > > flags '-F,+insn,+insnlen'.
> > >
> > > CoreSight trace decoder has provided sufficient information to decide
> > > the instruction size based on the isa type: A64/A32 instruction are
> > > 32-bit size, but one exception is the T32 instruction size, which might
> > > be 32-bit or 16-bit.
> > >
> > > This patch handles for these cases and it reads the instruction values
> > > from DSO file; thus can support flags '-F,+insn,+insnlen'.
>  
> > The code seems to be correct.  I have also tested this patch.
>  
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> Thanks, applied.

Thanks a lot, Mathieu & Arnaldo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
