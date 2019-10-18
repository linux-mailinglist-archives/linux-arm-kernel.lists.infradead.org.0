Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D14DCCD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5tyuNB6691zM1tDnWeXhBiEnb0EtoTTsSq9DwSjEbg=; b=XkLQO/+GtrrSTd
	7DPyDoNN5ivupqHpA1z/mSFDmDvy5uhb8aT7ThXJrA9RynyeJt8MW6b3TPMPQyEraT9eCkIys9zUq
	XMTh2uR+ekPXkesvK4mLg+DhfTfGhDFQPEsn9gU2bE0NWfN9S46FfXEzJYhdBTMU83NurqpXvwtbe
	ACDQNH4/KedPwuWv8AK3mj3uZRc70ZvikrDwqjKydqbq2VuH5v3CN/+5AG7HcxcXZYfL0qNJyrhEZ
	s4l2N4j9qvYEuhd5yLY/LNopx+4PU5USfM8AmD0Gl0f/x1VZyOWpxoaYa8Jp2UY7Viou+9EzgNpfh
	+24/VhISOz9VEaXJyh0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLW6Z-0001E4-9B; Fri, 18 Oct 2019 17:31:59 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLW6L-0001DT-To
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:31:47 +0000
Received: by mail-il1-x142.google.com with SMTP id o16so6261305ilq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4qFr7tmvxRMVc+FCpIKlwmUQdJxMZt6SVR1EnyZDw74=;
 b=PzMMC9cKAiyn6bioJIfC917EgH+5Q+lzj9JvvPPWfPETQhZKhZxhHeX4Rx7Dak39EY
 SKNwhKWjDeCnr0AGBZWMPQPe8zNVlJeRXxeAk2hJWyBA4FL0lYW25P9X4iRuQpZF8Y/W
 z4LmeUxMVctKXzincxllR8g3vWds+F3DUF9bTngvVuZBI9Bms+hzvuOhwmAH2M4rYTP9
 2WHd8UrO6nIx4H6QDgFPtYWgTIRzyoMCGXJqkfvk52XqGV8CPczQJ7EZsU9lNi7Q5A3G
 iSRTzhJIQHY5ucvFlurOO503a2/URosqxMiLqTFy8TduluG8nJspP5kE40uZK/aZl6F3
 t7Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4qFr7tmvxRMVc+FCpIKlwmUQdJxMZt6SVR1EnyZDw74=;
 b=AZb6JegmN89xeVo0q/uvkAQacSmi4ZjRSJXSczICLPD7XcP2zD9d/88tSDsQ9jjbIJ
 eV4Ck6B77wUKxIfU831mARd4eYZ9aAyvye6lPqpQMNiUhUTY3tSylwf00P6TJY9pLT6W
 DsOHDyFtpKTQu1fY3eIVgUSMU+LyqhGMtqErYad7RGYfklEvo0c2c35BbTtUTpGHS0co
 mAYJqmt+OBXkRKiVJOEN4oNDeAUnl0x72i48r+r51qbX/pwTYgripi/+0lZIM0OYI+GA
 qA26FZdzYzyJ9uTrYrD8jpI1EdKd80QrlnU8algAypLdAeqN+7evXhRX54h7UdYfr+/g
 ubMA==
X-Gm-Message-State: APjAAAWiN9VJZho+WYcg6bFNp/3VMwJSoFl7TplvUZ+vi2AuXD0oADIJ
 mTShqiHYvLlqp7+EFS6NYVy/q9MACyP9qb+vH/Edwg==
X-Google-Smtp-Source: APXvYqzQg2H4y9jctt1IvHCTaEbMKx3FQ/dOUqJ1O3p6JKEv9W1TkRHxfHw6Y3/H1JlTwwOruu18CR3RAz7N4Q1L83g=
X-Received: by 2002:a92:86ce:: with SMTP id l75mr11696428ilh.140.1571419904421; 
 Fri, 18 Oct 2019 10:31:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191015212004.24748-1-mike.leach@linaro.org>
 <20191015212004.24748-11-mike.leach@linaro.org>
 <20191018162009.GB12883@xps15>
In-Reply-To: <20191018162009.GB12883@xps15>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 18 Oct 2019 11:31:33 -0600
Message-ID: <CANLsYkyYwNv0dApJws+e=M3h6MKqX7triVgY6qy74oOYJe7FMw@mail.gmail.com>
Subject: Re: [PATCH v3 10/11] coresight: docs: Create common sub-directory for
 coresight trace.
To: Mike Leach <mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_103145_965486_1F0077B4 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
Cc: Jon Corbet <corbet@lwn.net>, Greg KH <gregkh@linuxfoundation.org>,
 Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 at 10:20, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Tue, Oct 15, 2019 at 10:20:03PM +0100, Mike Leach wrote:
> > There are two files in the Documentation/trace directory relating to
> > coresight, with more to follow, so create a Documentation/trace/coresight
> > directory and move existing files there. Update MAINTAINERS to reference
> > this sub-directory rather than the individual files.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  Documentation/trace/{ => coresight}/coresight-cpu-debug.rst | 0
> >  Documentation/trace/{ => coresight}/coresight.rst           | 2 +-
> >  Documentation/trace/{ => coresight}/stm.rst                 | 0
> >  MAINTAINERS                                                 | 3 +--
> >  4 files changed, 2 insertions(+), 3 deletions(-)
> >  rename Documentation/trace/{ => coresight}/coresight-cpu-debug.rst (100%)
> >  rename Documentation/trace/{ => coresight}/coresight.rst (99%)
> >  rename Documentation/trace/{ => coresight}/stm.rst (100%)
> >
> > diff --git a/Documentation/trace/coresight-cpu-debug.rst b/Documentation/trace/coresight/coresight-cpu-debug.rst
> > similarity index 100%
> > rename from Documentation/trace/coresight-cpu-debug.rst
> > rename to Documentation/trace/coresight/coresight-cpu-debug.rst
> > diff --git a/Documentation/trace/coresight.rst b/Documentation/trace/coresight/coresight.rst
> > similarity index 99%
> > rename from Documentation/trace/coresight.rst
> > rename to Documentation/trace/coresight/coresight.rst
> > index 72f4b7ef1bad..835e8aa0bf8c 100644
> > --- a/Documentation/trace/coresight.rst
> > +++ b/Documentation/trace/coresight/coresight.rst
> > @@ -493,6 +493,6 @@ Details on how to use the generic STM API can be found here [#second]_.
> >
> >  .. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
> >
> > -.. [#second] Documentation/trace/stm.rst
> > +.. [#second] Documentation/trace/coresight/stm.rst
> >
> >  .. [#third] https://github.com/Linaro/perf-opencsd
> > diff --git a/Documentation/trace/stm.rst b/Documentation/trace/coresight/stm.rst
> > similarity index 100%
> > rename from Documentation/trace/stm.rst
> > rename to Documentation/trace/coresight/stm.rst
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 296de2b51c83..f903160b507c 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -1608,8 +1608,7 @@ R:      Suzuki K Poulose <suzuki.poulose@arm.com>
> >  L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> >  S:   Maintained
> >  F:   drivers/hwtracing/coresight/*
> > -F:   Documentation/trace/coresight.rst
> > -F:   Documentation/trace/coresight-cpu-debug.rst
> > +F:   Documentation/trace/coresight/*
> >  F:   Documentation/devicetree/bindings/arm/coresight.txt
> >  F:   Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> >  F:   Documentation/ABI/testing/sysfs-bus-coresight-devices-*
>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

I'm taking that back - please remove mentions of coresight files in
Documentation/trace/index.rst.

Since you do have to respin, please split patch 09.  And now that I
have applied all the other patches, your next revision should be a
documentation set.

Thanks,
Mathieu
>
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
