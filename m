Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930A583882
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 20:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNMnBqWEzBdbR8N3Zqd1bhAKbp/TIr4D38wOYQ/nsoQ=; b=GkHGawO9JvW+3Z
	tGR8ERgQRtjea6hn5HeWt23t909Af2ZVonf++d9RiEoqpDMoyTQ7HezDYfSuKRVJlyX2AVA3YJE/R
	2hd1WEqinS9fiV7xzg/63R4bVe20xlzWVElFBteans6LMsIZpLTywzvLria1Nui4qL7+LZHJWOQhW
	Aq0Uzetxtos/z7IGbjkKVaQPHy87Ab60Tr980Hc/EKzs0a/dyrcN2TO8Zk19uQruM2j6K2CQlEJ5s
	4hKFy6bkANkitjOs/IXCoWRI8k2B7cAlg/5fPwvufmPuCVeJAo3zie81fA0MEFx545WL0Lr9AVJF7
	2dm6UXtKaZnUmyzCvLtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv44A-0002UD-Ap; Tue, 06 Aug 2019 18:20:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv440-00025E-4O
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 18:20:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id u14so41965166pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 11:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YagwnSKjQ9AFWb+JwZGJEtizWqnGfGkBH4aRSOhIlmw=;
 b=KoIGmartaNCDHdqRUk7Y5Z8Djc1SV/l1OncetDnEvj8Y7O4V4mxOvdEOuedUC+SE8C
 L3V76Jc0LaKIpmR/+PRqkdcexS0s9/ippez+JIzrD2uaZ8vEiSRslr3cgd+VIuiM52QX
 UKkayxiP3Niz/PnebgM5RJf5bijdRk/QHRPcI2umtokyw+lgh8mUQmZutLc2UavKlAMl
 9DsNUqOCqaJfuNzRa8ybgIg7EngFO9wrtSBuGkOeRiXT33yHIRmdcWOB8NajmQgx6uwm
 EXukoSfpWUj+TmypMGa/lcJH6n5cSEuFwHzMmlTs8RPT39FlDbg/1jHQX/8jCX+N8vYb
 cvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YagwnSKjQ9AFWb+JwZGJEtizWqnGfGkBH4aRSOhIlmw=;
 b=SjEdpHAxsOVd7YEE8BK7KH418+EpEq72OWtSgEgGUnvAOyJhRdKvJTS+6RUju68dcy
 FUV0jD02GCgXHDg1/Q7Q2DzjPr1Iooyv41iq6Oq1H0qrSMaS3n2uJgKQuK3Yh+5hrnT5
 pEGq5+1zy3aQ19tNh0Furpck2KIj6Bsa6YwI2bN+EI/2AhkgH6kpdN8kyK7uhKzJMILk
 Ok42QkqXO5MsrNN9KQrtle0hBy56ewZg5ZEhuZLGtayYSqUqhaYMRtu1A9Jzbz7RgM7y
 w9WwBM1NEXdbbDBnsT5IeF82/xQHc2gp5QaYN5+/GESgCYLnf3Wknmff/ImqD9yXZvte
 LD8Q==
X-Gm-Message-State: APjAAAU9Bz5RKPYPS/sHUqmgqvw29l2pOQRCE8kj8vUxwa7vdh5VOqhR
 NcdVHv1HVyyUb6KkXri5VLOKHw==
X-Google-Smtp-Source: APXvYqxvajvknV5Crc2GPBDACD5q5nc5DS/TZ3iQqT5dzZ4pFCLgRCC1lLvaVW/QfeBBtQ2Q4V9PrA==
X-Received: by 2002:a17:90a:d3d4:: with SMTP id
 d20mr4673518pjw.28.1565115598199; 
 Tue, 06 Aug 2019 11:19:58 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 33sm101572057pgy.22.2019.08.06.11.19.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 11:19:57 -0700 (PDT)
Date: Tue, 6 Aug 2019 11:21:28 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 0/6] hwspinlock: allow sharing of hwspinlocks
Message-ID: <20190806182128.GD26807@tuxbook-pro>
References: <1552492237-28810-1-git-send-email-fabien.dessenne@st.com>
 <20190801191403.GA7234@tuxbook-pro>
 <1a057176-81ab-e302-4375-2717ceef6924@st.com>
 <20190805174659.GA23928@tuxbook-pro>
 <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcd1aeea-cffe-d5fb-af5a-e52efcc2e046@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_112000_205027_77747C93 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 06 Aug 10:38 PDT 2019, Suman Anna wrote:

> Hi Fabien,
> =

> On 8/5/19 12:46 PM, Bjorn Andersson wrote:
> > On Mon 05 Aug 01:48 PDT 2019, Fabien DESSENNE wrote:
> > =

> >>
> >> On 01/08/2019 9:14 PM, Bjorn Andersson wrote:
> >>> On Wed 13 Mar 08:50 PDT 2019, Fabien Dessenne wrote:
[..]
> >> B/ This would introduce some inconsistency between the two 'request' A=
PI
> >> which are hwspin_lock_request() and hwspin_lock_request_specific().
> >> hwspin_lock_request() looks for an unused lock, so requests for an exc=
lusive
> >> usage. On the other side, request_specific() would request shared lock=
s.
> >> Worst the following sequence can transform an exclusive usage into a s=
hared
> >>
> > =

> > There is already an inconsistency in between these; as with above any
> > system that uses both request() and request_specific() will be suffering
> > from intermittent failures due to probe ordering.
> > =

> >> one:
> >>  =A0 -hwspin_lock_request() -> returns Id#0 (exclusive)
> >>  =A0 -hwspin_lock_request() -> returns Id#1 (exclusive)
> >>  =A0 -hwspin_lock_request_specific(0) -> returns Id#0 and makes Id#0 s=
hared
> >> Honestly I am not sure that this is a real issue, but it's better to h=
ave it
> >> in mind before we take ay decision
> =

> Wouldn't it be actually simpler to just introduce a new specific API
> variant for this, similar to the reset core for example (it uses a
> separate exclusive API), without having to modify the bindings at all.
> It is just a case of your driver using the right API, and the core can
> be modified to use the additional tag semantics based on the API. It
> should avoid any confusion with say using a different second cell value
> for the same lock in two different nodes.
> =


But this implies that there is an actual need to hold these locks
exclusively. Given that they are (except for the raw case) all wrapped
by Linux locking primitives there shouldn't be a problem sharing a lock
(except possibly for the raw case).


I agree that we shouldn't specify this property in DT - if anything it
should be a variant of the API.

> If you are sharing a hwlock on the Linux side, surely your driver should
> be aware that it is a shared lock. The tag can be set during the first
> request API, and you look through both tags when giving out a handle.
> =


Why would the driver need to know about it?

> Obviously, the hwspin_lock_request() API usage semantics always had the
> implied additional need for communicating the lock id to the other peer
> entity, so a realistic usage is most always the specific API variant. I
> doubt this API would be of much use for the shared driver usage. This
> also implies that the client user does not care about specifying a lock
> in DT.
> =


Afaict if the lock are shared then there shouldn't be a problem with
some clients using the request API and others request_specific(). As any
collisions would simply mean that there are more contention on the lock.

With the current exclusive model that is not possible and the success of
the request_specific will depend on probe order.

But perhaps it should be explicitly prohibited to use both APIs on the
same hwspinlock instance?

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
