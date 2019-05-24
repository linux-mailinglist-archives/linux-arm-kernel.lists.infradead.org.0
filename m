Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24713298C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/IA/+lh+wkmid14tE1uSvWqFxfKap2B7mfWxE0QzLA=; b=hxZlvusc6herEy
	YehYAQWiewojbaovfRF4Qw+doMW2RrtQGPFA26GP3b0DZ4vuwbz23SdxVFgtU8GYYgurlWCwCT3Iv
	SNR8KPWqz2dohUKaGnWySWp01P9JQ0LlUyu2Pb73xnMpRS8xqg586D/QwP58ViGsWfwdgbyXjb8s0
	T1Gih17fQwJKf1R1St3yknBA+rVwrGHEwe7UCjqdY1eE5A9m9tmn6OU1XKEYrRjykchorNIGQ48Mv
	yKDQv4Fm1akjhSj+Xf98+FWxh4SSsErJK71dhgZmUY7c1sfcWpyLfd1ETX2WuggFjxFzghr2yOdPF
	iLFsyJzw2L/Bgr+UwoVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA7I-0003xf-0W; Fri, 24 May 2019 13:20:12 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUA75-0003wp-11
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:20:00 +0000
Received: by mail-qk1-x743.google.com with SMTP id c15so7487107qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 06:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9XdN+SJO4nNfooj9kJ5ndy5j9Cl/+8FH0MeIweuOGzA=;
 b=umKy+t+dNFNuRN3//yw8fJR6BmKynML3xuh30YRuWun2gOZ+W2hNgIWycKEjShbKbd
 +FaBLWWcJmgMHcMDZbJpme0B+zf+ew2DoIP3CGphOfrE7Uuv9JuH+Azx0JvVqPoUY69M
 8HdcUI0H3BJrfLosqseHHAHfiHj4KGX/ihlnRjVwBaCFLFsBmnSouSuJszVLhKJrYcwx
 8tQyWrNqwS2t+IfxysJ8FFxfS+5AG4ufj3xnhx+Gy9VtowqTETLuytKmYD3+BKSs5gml
 DcHLVCrIjW6guYl6IsMmAwxSbCC6nvhrn/xRdCsvVhDlb5k3q26iQg7IVg4+fGtcbDKS
 r1eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9XdN+SJO4nNfooj9kJ5ndy5j9Cl/+8FH0MeIweuOGzA=;
 b=mEjc1tNgqCBBhPmC1rF8QLiQc1qwwcFaxlnsJW/VtStoIe3QhSxL0f3Szi45zmp1Mv
 06nj66BlzRPcVUdpqShxlGfmU9P9RAuBEUmBGfz+1QEdKHXPyEpCe/m2c2ok2SAwZ+q3
 Ax3SGWOoOFGsF+PuLvCgkl3QA5Nu3a+YqACx0Ej4lHTBAzH/61S8llc+VyZ3mennJ0cY
 a7CAFbJzH/wR9tAmF6Fkj49T4c+8WTwYh1DiRPBf9n/WhVIIj7Gdo0hB2Dg7PsO6gLAe
 Q+VpxVGaBRh3QPQDUAHuCTE1Op1xPzZ/tNEMU5v9xUEKaHOQMM85+9HNma/tm8W/v4zk
 txPw==
X-Gm-Message-State: APjAAAVAkgS0UnL+T7tzAulzd2+jZ93NaAsDuyZM/N9LGrsb66tmz/kb
 dys30RQrsFi017s7TGzMCWTGTgDWA2iJZXkRB0crnMHN
X-Google-Smtp-Source: APXvYqx9KM7Yc5ojQbqNvCzGfvIIOam7qCdkDSAjgKM3Z0ld27IhHfeKfkMag3SA4N0Hdi+ZJCJ+jc69aHauc+MA8mw=
X-Received: by 2002:a0c:8b54:: with SMTP id d20mr28830004qvc.1.1558703996214; 
 Fri, 24 May 2019 06:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <20190523143227.GC31751@leoy-ThinkPad-X240s>
 <23a50436-4bcf-3439-c189-093e1a58438d@arm.com>
In-Reply-To: <23a50436-4bcf-3439-c189-093e1a58438d@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 24 May 2019 14:19:43 +0100
Message-ID: <CAJ9a7Vjh_RDgp6nKrgrmuKcAhs77iU_oKTuBhSBdkUUwiwZbSg@mail.gmail.com>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_061959_075358_8FAED76A 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki, Leo

On Thu, 23 May 2019 at 16:32, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Leo,
>
> On 23/05/2019 15:32, Leo Yan wrote:
> > Hi Suzuki,
> >
> > On Wed, May 22, 2019 at 11:34:33AM +0100, Suzuki K Poulose wrote:
> >
> > [...]
> >
> >> Changes since v2:
> >>   - Drop the patches exposing device links via sysfs, to be posted as separate
> >>     series.
> >
> > Thanks for sharing the git tree linkage in another email.  Just want
> > to confirm, since patch set v3 you have dropped the patch "coresight:
> > Expose device connections via sysfs" [1], will you send out this patch
> > after ACPI binding support patches has been merged?
>
> We are awaiting Mike's comment on the approach, as his CTI support also
> needs something similar.
>

I fully agree that there is requirement to expose device connections
as Suzuki's patches provided. As commented in the original patch, it
removes the need for users to have knowledge of hardware specifics or
access to device tree source.

For the trace datapath a simple link is sufficient to express this
information. The nature of the data and connection is known - it is
the trace data running from source to sink. The linked components are
guaranteed to be registered coresight devices

However, the requirement for the CTI is different.

CTI is not limited to connecting to other coresight devices. Any
device can be wired into a CTI trigger signal. These devices may or
may not have drivers  / entries in the device tree.
For each connection a client needs to know the signals connected to
the cti, the signal directions, the signal prupose if possible, and
the device connected.
For this reason we dynamically fill out a connections infomation
sub-dir in sysfs containing _name, _trigin_sig, _trigout_sig,
_trigin_type, _trigout_type - described in the patch [1].

This information is sufficient and necessary to enable a user to
program a CTI in most cases.

As an example look at the Juno dtsi in [2].
CTI 0 is connected to ETR, ETF, STM and TPIU - all coresight devices.
CTI 1 is connected to REF_CLK, system profiler and watchdog - no
coresight devices at all.
CTI 2 is connected to ETF, and two ELA devices - so 1 coresight device
and 2 not coresight devices.

So my view is that for the case where CTI is connected to another
CoreSight device the sysfs link could be used in addition to the
information described above.

Regards.

Mike

[1] https://lists.linaro.org/pipermail/coresight/2019-May/002587.html
[2] https://lists.linaro.org/pipermail/coresight/2019-May/002589.html

> >
> > When you send out the new patch for exposing device connection, please
> > loop me so that I can base on it for perf testing related works.
>
> Sure, will do. As such, the perf testing should not be affected by that
> series. It is just a helper to demonstrate the connections. But yes, it
> will definitely help you to choose an ETF for a cluster, if you had multiple
> ETFs on the system. Otherwise, you should be OK.
>
> Please be aware that the power management support is missing on ACPI platform.
> So you must make sure, by other means, that the debug domain is powered up.
>
>
> Cheers
> Suzuki
> _______________________________________________
> CoreSight mailing list
> CoreSight@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/coresight



--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
