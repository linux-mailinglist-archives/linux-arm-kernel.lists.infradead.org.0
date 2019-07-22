Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8F270149
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qG8SeiL83Sk2+depG3pgWLedo1XTjJiFELyFQwMF3Rk=; b=UjVWgRy+VmNGtE
	Pcj5pVcsPrbP5bTa8gyjQMvINmgqB2NcWgs7a547gPtGyZGSC6exYd5IzvJvdFGNOXyoJOoNVq4Hd
	VPXF8rcJmXCRJFynWhai/wV1GZN5IN7FrHTPDLW8fTgJTbg6lpTYPfVCoBFFUL9XjNPI6MpbW6jYB
	79VNdFNrNlZNqV8Rbc1vit/44G16j43PkGQ5COXpxK8k4FTmCW+JVunyKeEtKOZrAr3yxEfjeq3qs
	h5zcGlvoatjBgHXRmqL4JEJAavbZv/ZxbiQAXcbyzQZTK17xgDGuRIr1LvSkYYhYAW1ftFzSy6a3+
	AvrcvSdgr2iaReO5rfyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYZx-00083V-6K; Mon, 22 Jul 2019 13:42:13 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYZf-0007zu-Uu
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:41:57 +0000
Received: by mail-qk1-x731.google.com with SMTP id a27so28610171qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r7jurWEbcB87wkHM6FBIF/d6ZCsIeD3qrag1BaWvzr0=;
 b=ctSiEsOEiyiwu0n3CEQABL3/Tosruh5w/+6uzF92xLW34JmyfhThCGBMfVUaYt9dcx
 eW2R16GiG0XcoxTfHQmNNe2NbtDmD4V4zDlbn3sIafmR+axGp5w7q8jG/t+N5A5vd1+2
 T8limk/5bxxJguypRZGjOMgCVjJ3UuJ440SlT4VBiuew99yPu+wjBAGDyiX6h7A0CwOA
 dwL0M70N/ZKBJ7e/9dDovVWnU15MNgA7ZpwwgLu6rerH2A7rFP/VNIWBW0CDFkWJkGIk
 02tVH4RCMUcpMeH+V7LrZ4lwFpUMFWob0uRUx2w20StfeAVPWAbvrasBs/AM3w8QAsz1
 Qvkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r7jurWEbcB87wkHM6FBIF/d6ZCsIeD3qrag1BaWvzr0=;
 b=TWWNYi/Y3/Iaqhen+qP61NHeXH9tbTMV8yeTnPC1kh+LdRM0FJ8mcYuWDLt7SOswmR
 OhdcZZwrvPE//M0XTuueD0rZrs3h3Q+5PaBBchAt84P3KYByE9bKtUTfloL8AJ/5MKgT
 j/IG718KUjPfl6ouCzpdvciHK6hxE0GU5zMI0clyTXD5ks88gh2BEhWdtvc4KpGv0/S7
 d58Zgb5rIlvxvrpiOpXknJlpPVM0WWs4FDfrRfvjhudtcTun8Zn+LOIPbBqLYbp9GkpB
 9rKqxYV9whMiAdX/GC41LkvTaGjdkKgNf3K7LVXWBH5LaR1L2MDQE9rGcGxTUZdAyFqe
 RHMg==
X-Gm-Message-State: APjAAAW3HJDIWmVadSBagj4xwu+P7Vng0rxkssv1P5D2hYEoB20gIZBx
 zL6Qj9LCmO2M4gfdA9JYZagDwg==
X-Google-Smtp-Source: APXvYqxGgJ5n0Ggl2+5KtjzE7HLyY29aRN+3J2KTmJj1bDyPcTuyXmhCmMkJ3yMp7O1QI/DGhNTc3w==
X-Received: by 2002:a37:a6d8:: with SMTP id
 p207mr42748278qke.387.1563802913858; 
 Mon, 22 Jul 2019 06:41:53 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id x8sm17451291qkl.27.2019.07.22.06.41.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 22 Jul 2019 06:41:52 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hpYZc-0003Vr-7E; Mon, 22 Jul 2019 10:41:52 -0300
Date: Mon, 22 Jul 2019 10:41:52 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190722134152.GA13013@ziepe.ca>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721210837.GC363@bombadil.infradead.org>
 <20190721233113.GV14271@linux.ibm.com>
 <20190722035042-mutt-send-email-mst@kernel.org>
 <20190722115149.GY14271@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722115149.GY14271@linux.ibm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064156_133320_7C1FBBEE 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:731 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mhocko@suse.com, "Michael S. Tsirkin" <mst@redhat.com>,
 peterz@infradead.org, jasowang@redhat.com, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, aarcange@redhat.com,
 davem@davemloft.net, Matthew Wilcox <willy@infradead.org>, hch@infradead.org,
 linux-arm-kernel@lists.infradead.org, keescook@chromium.org,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 christian@brauner.io, wad@chromium.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 akpm@linux-foundation.org, guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 04:51:49AM -0700, Paul E. McKenney wrote:

> > > > Would it make sense to have call_rcu() check to see if there are many
> > > > outstanding requests on this CPU and if so process them before returning?
> > > > That would ensure that frequent callers usually ended up doing their
> > > > own processing.
> > > 
> > > Unfortunately, no.  Here is a code fragment illustrating why:

That is only true in the general case though, kfree_rcu() doesn't have
this problem since we know what the callback is doing. In general a
caller of kfree_rcu() should not need to hold any locks while calling
it.

We could apply the same idea more generally and have some
'call_immediate_or_rcu()' which has restrictions on the caller's
context.

I think if we have some kind of problem here it would be better to
handle it inside the core code and only require that callers use the
correct RCU API.

I can think of many places where kfree_rcu() is being used under user
control..

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
