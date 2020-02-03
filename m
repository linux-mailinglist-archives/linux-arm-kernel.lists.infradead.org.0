Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275D31505D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 13:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UQvy5Zxsh18ozLtHSb5Cth9QqIhjBcylRtpj8VUE18=; b=kBdLW6tuehPZzK
	qADIRlr7Ri3vV2AzAQmPr8qg0EJUuv+tsQiqMyx+xYS5nYwomqcfdbXzrgwcOo/kUoIM4cEk4oSI3
	0GbfjB0LzgKgvqGb2Z2tG8R85BNDNYSBNp5NqaFPl1QxeFxyz2EFbD4dbGgk5Vfx4GcyDo5cbUaWK
	IU+tHFO+fRDGoYHzmrr8AR6z7Vf5rlGjpRVyJwp21FF3GYp3jZZB8AQ1xoo13KDsIYPNATMqLim8c
	eFWJA6A0kwAdqXkHhdI+VV7bpNfOTHMQbHUhZdORG9t5ntXgFb0UdiR8CImID6GJVsjwIjF5kf+Ls
	kT/GKIPYF92kK45HbIWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyaTF-0006kA-1S; Mon, 03 Feb 2020 12:04:53 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyaT6-0006jh-6d
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 12:04:45 +0000
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MuluP-1jqPYm2pT1-00rn17 for <linux-arm-kernel@lists.infradead.org>; Mon,
 03 Feb 2020 12:59:31 +0100
Received: by mail-qk1-f172.google.com with SMTP id w25so13899367qki.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 03:59:31 -0800 (PST)
X-Gm-Message-State: APjAAAWvTJlCuOFQxolNCDOx+U9155gugTzbbvNAnEs1Obd+WiD3j/af
 mwXXgov/pvTydA+8oveKi0ZFU9bCCB74q0+OXg4=
X-Google-Smtp-Source: APXvYqyvsIiRUM+eJEFAIsaK7CjOU1YcjR9nHLh0/OBPGpCnh1WHcjpw3dP0kWUCKlcYs360p9M7EBVhR7QpHHhxL8A=
X-Received: by 2002:a05:620a:16a7:: with SMTP id
 s7mr22539771qkj.3.1580731170570; 
 Mon, 03 Feb 2020 03:59:30 -0800 (PST)
MIME-Version: 1.0
References: <231ec2e1fd2470ef7a9b8b2c766ff8e4095b6dd3.1580399657.git.christophe.leroy@c-s.fr>
 <202002031426.QLrslGif%lkp@intel.com>
In-Reply-To: <202002031426.QLrslGif%lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 3 Feb 2020 12:59:14 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2+Cq_-L662WaQeScTTX1W50wPAkqs1R=fqyrHrd74znw@mail.gmail.com>
Message-ID: <CAK8P3a2+Cq_-L662WaQeScTTX1W50wPAkqs1R=fqyrHrd74znw@mail.gmail.com>
Subject: Re: [PATCH v5 6/6] powerpc/vdso: Switch VDSO to generic C
 implementation.
To: kbuild test robot <lkp@intel.com>
X-Provags-ID: V03:K1:tfD0gmCdkXfunkoDvYHfB4Zkgy2Xhl/FYqHUDOfoHV396zteKBc
 nSTqj62QgfNEGv3u75QQcVgHW/9mIrOx4rjA8EPoXR4xHgY85gGH43KWIBe3q1muJxjvazQ
 AxzQXZDHcLpxXMzvAYCR0vZUGqRs65MvveXnCQuoPg8ci6sCcfA/uOn3+npHMtL9ZxLKyLc
 L4jYlesCFd8AzYWxdQ0HQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ok2GabL9w2Q=:+hnH1qv04Nz23qE1xzspkw
 vIBTfqpHIcWdc6ZNXCTTEDealmVlwGy4ON+IN1KaIZ1S1QwIz+NHVFM1RYBlQ2vtkULI2u/nd
 jO+guTeItI+PqCzcDI2gqSmQG4iQN7p+G0QFnPOWdZ5w1ArH8m3jVUk354+I9iWHQp6GK8aAe
 PJRshwhcVt8VZ6ZAlEA5aOFMzuQykjul6avP5RdSCAkLK4BMmJxwuU+lJnD7t3L96VpF/7x2g
 xGkNPweK2Pniey3Lx9N/PKRSpCKPlBTSs+IwSO5VrlzbkzowJP16hIIdEXlYG+mMKeQbjLPJz
 C7ISMcqRDmzrZ70vdtCpdk3o8/NaaapNtVl/RwGSC2HCUig76kFt14SmvdOZGcUPFebL833xK
 psXzsnsTUKv5C+y5VSmToBjeEkrbv2dCBHgZjtj43vo3TD9pwCJFTMSEJLwrqTdYlXxhNKd56
 4j+QcS8rMInOq9zWt6zupSBaGk+RKeSLbKusI5WOPJZV03hHse9zMwtQIJilGy3PGzB8l7wM/
 6HeRujpDwvjnxA6GQVQKwufLxLpPIfQTGmqH/oqR7zEdDxjAbGiyGEaqYI6dS4YLNCtbKEp6Q
 mx9fW5oITlXGpjGy0bWQTYf/eZbtSlhsRdARvgIkwYr0Ih/qWcXaUAWvXiO+f9BjQnTE0PSz+
 dnRovTaE0y5kliqx7tcoOXliZtH6SvVvH6iG073xkUVoH/1mICRlCffiDYlnV2ya/5u7r29X7
 1siSGLoPCUI5OGXLue3zel6qCzGlqx7x/wEWx9twErrLJFzmlV1bykrrrH4uj93dCfFnpJDNH
 EubcAqh/8KsK9/yMYA4kxIL2TUqnRIWI2+CEwf1zIqsrQuwrEY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_040444_533021_55B388D5 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Nathan Lynch <nathanl@linux.ibm.com>, kbuild-all@lists.01.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 3, 2020 at 12:28 PM kbuild test robot <lkp@intel.com> wrote:
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> arch/powerpc/kernel/vdso32/vgettimeofday.c:26:1: error: unknown type name 'time_t'; did you mean 'ktime_t'?
>     time_t __c_kernel_time(time_t *time, const struct vdso_data *vd)
>     ^~~~~~
>     ktime_t


time_t is no longer available in linux-next, so this has to use
__kernel_old_time_t.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
