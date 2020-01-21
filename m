Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163401443BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcNwj0KX9FalKPs2wwpq6KQkamxroak82BB8Y9MO+u0=; b=nTchgWPTLctPmi
	e+ZcuMB+M8eAUtPbMSLKI7oLERBJOC57lNVEHxMgUE9XTvyZ9dIuxgRBNhQn5m0p6RIyj4baDS650
	0e2rsgcNieEvOC+FbTFzPnlBzLAhQEoirvO2AQhZ1Qr5pZClO7iInxqIlWnHnBWUJcOKes/bXtgee
	DQ926s2mOJgjN5olYZMlNnFwiMB1iBMScveKQp99IhNrDvcycyVZZrZCxjtd5xliSm5paYRJ42Jdy
	AH91JCbubd74wI3JShAKeXbKd5LSecTB5IkE3zVQKP5IXsCKuQ9A9cOvfwubqMdlDAzn/Il5WCn+/
	KTLgTxR9NzbWC2XFTldA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxlE-00017k-45; Tue, 21 Jan 2020 17:56:20 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxl1-000171-Tr
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:56:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so3725590ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 09:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=98bZxOBbCQ3VnMNuVxei8T8EkXL1AFFFNz8Ptr5Fwf4=;
 b=f0UMJKfmKZdH5ae7CC35Bo8JfJuzIWwRMR2d3DvgxxocOt4ZxltoLSDNLwnzFZ8sCh
 mHQ747HPLwIz8jiYkjw/ZBy7Z+2kGJIfn0vBm2e30i+bbMJpifVwiABEulHvlUjKF3e+
 zmkyIyJf834Xz+CPHcMmtF5hwd//KEWq0xygi0vqFBd3IcGN7Ao8G+F+LXLzP7r3FTHU
 oWLSaaKu9S1cZeQ2mmM7DUSMHSd9Ajyf0ADQRJWavAuhTtXQndb3srd5FE+ES5vHQ81S
 2hSAKezaBjD/oILoUk/qKVeqjfM7viogSA5lWNPJ1ygAzh6EIYbDvnDKr6JiQhFI5jr2
 EyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=98bZxOBbCQ3VnMNuVxei8T8EkXL1AFFFNz8Ptr5Fwf4=;
 b=WvT55H2d9MOUv9wPKzVt1LRMb3AOF8YMKzlpwp3+hzuGZyUYehecozRbVG6sNqfZON
 MxGTt2iaeFCdnnJh8IbOihq+5pZjja7DuFlhxbLC7spCrjBJGSkSab8ySlsCa8mjUq2S
 rVuNvrx/Ew5sTcCgEH52MCubivhu5qmePC4w5V6o1/4Gk8MMZP/XEFAraEd+Q8nRGnV9
 9Vxy8HInnES9b5dA86ibnGDLQYH5KrQLcfuq6KWWQiqoR7tHIrtdup4QALv+sY94Cmk4
 IYhlUrgEDdjTIWq21SJzzqiTeDo1IPVqNlCfdiKGH9kTK1P/6dlXIIz9btPi4yvViUx5
 4gqQ==
X-Gm-Message-State: APjAAAXYoskykpd6SomPjqbeeH1euq6ugBLvXcTK9shn3IaBbeZ45IzW
 G9hV+egLYFqt7yHSsKsJXzxabJZRpIKS+IsS1gM=
X-Google-Smtp-Source: APXvYqzSduuvbYALVkj//Xrt9JfaU9cf6Qr6bCvfXcM6mqwY1KvupDpCfJTjcSWmOKPsyFlFi8k1zTlkXGNFH8MYpJ4=
X-Received: by 2002:a05:651c:8f:: with SMTP id
 15mr17366951ljq.109.1579629365512; 
 Tue, 21 Jan 2020 09:56:05 -0800 (PST)
MIME-Version: 1.0
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
In-Reply-To: <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Tue, 21 Jan 2020 09:55:53 -0800
Message-ID: <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Alexey Budankov <alexey.budankov@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_095607_989156_F9F7B6D6 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alexei.starovoitov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 9:31 AM Alexey Budankov
<alexey.budankov@linux.intel.com> wrote:
>
>
> On 21.01.2020 17:43, Stephen Smalley wrote:
> > On 1/20/20 6:23 AM, Alexey Budankov wrote:
> >>
> >> Introduce CAP_PERFMON capability designed to secure system performance
> >> monitoring and observability operations so that CAP_PERFMON would assist
> >> CAP_SYS_ADMIN capability in its governing role for perf_events, i915_perf
> >> and other performance monitoring and observability subsystems.
> >>
> >> CAP_PERFMON intends to harden system security and integrity during system
> >> performance monitoring and observability operations by decreasing attack
> >> surface that is available to a CAP_SYS_ADMIN privileged process [1].
> >> Providing access to system performance monitoring and observability
> >> operations under CAP_PERFMON capability singly, without the rest of
> >> CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials and
> >> makes operation more secure.
> >>
> >> CAP_PERFMON intends to take over CAP_SYS_ADMIN credentials related to
> >> system performance monitoring and observability operations and balance
> >> amount of CAP_SYS_ADMIN credentials following the recommendations in the
> >> capabilities man page [1] for CAP_SYS_ADMIN: "Note: this capability is
> >> overloaded; see Notes to kernel developers, below."
> >>
> >> Although the software running under CAP_PERFMON can not ensure avoidance
> >> of related hardware issues, the software can still mitigate these issues
> >> following the official embargoed hardware issues mitigation procedure [2].
> >> The bugs in the software itself could be fixed following the standard
> >> kernel development process [3] to maintain and harden security of system
> >> performance monitoring and observability operations.
> >>
> >> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
> >> [2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
> >> [3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
> >>
> >> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> >> ---
> >>   include/linux/capability.h          | 12 ++++++++++++
> >>   include/uapi/linux/capability.h     |  8 +++++++-
> >>   security/selinux/include/classmap.h |  4 ++--
> >>   3 files changed, 21 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/include/linux/capability.h b/include/linux/capability.h
> >> index ecce0f43c73a..8784969d91e1 100644
> >> --- a/include/linux/capability.h
> >> +++ b/include/linux/capability.h
> >> @@ -251,6 +251,18 @@ extern bool privileged_wrt_inode_uidgid(struct user_namespace *ns, const struct
> >>   extern bool capable_wrt_inode_uidgid(const struct inode *inode, int cap);
> >>   extern bool file_ns_capable(const struct file *file, struct user_namespace *ns, int cap);
> >>   extern bool ptracer_capable(struct task_struct *tsk, struct user_namespace *ns);
> >> +static inline bool perfmon_capable(void)
> >> +{
> >> +    struct user_namespace *ns = &init_user_ns;
> >> +
> >> +    if (ns_capable_noaudit(ns, CAP_PERFMON))
> >> +        return ns_capable(ns, CAP_PERFMON);
> >> +
> >> +    if (ns_capable_noaudit(ns, CAP_SYS_ADMIN))
> >> +        return ns_capable(ns, CAP_SYS_ADMIN);
> >> +
> >> +    return false;
> >> +}
> >
> > Why _noaudit()?  Normally only used when a permission failure is non-fatal to the operation.  Otherwise, we want the audit message.
>
> Some of ideas from v4 review.

well, in the requested changes form v4 I wrote:
return capable(CAP_PERFMON);
instead of
return false;

That's what Andy suggested earlier for CAP_BPF.
I think that should resolve Stephen's concern.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
