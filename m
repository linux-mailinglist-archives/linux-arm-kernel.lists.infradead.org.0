Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB2215903C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 14:47:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/4wtlNjG65Nv0BsD4o4RpuM7311SeueP531QqnjGZw=; b=P4ldyMauTWAUi3
	9EgIB1xBAKydBdCCq/HDfyFv9GYpbG48sdV32+Lq4CXA+rp5PEad5KqIzqY0ktYud9duvXqYj4Omf
	8UnaIFTKaF7J2HtdDX31sSCC/95ac2/f19YU+CY2GQXQqgQy0vQYsmY2eQ/EYl0dLzDPPnlvt/eO6
	Y3+20sgVB1th1jCh++DiAMSjIGaGh/RkfutKFt5oYdlWvpE4TrxqwQ6a5a30RmYYcy56kgitbpUDA
	9bzQVnOmY+NFfWcHMpup2E71MNd1pRnmjhTNeZZgIh0UHIEZwxY3vRNpaiixg0QTw6De6bUPte2XM
	Equ20k/JOiry1IfofKHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Vt0-0003Uc-Be; Tue, 11 Feb 2020 13:47:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Vsr-0003UE-Bz
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 13:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581428842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vZZXarGtig3tAtPPECD18uPxu8CsjJJba6XrWOt6Ku8=;
 b=UNN0BdqrnMFtMjDNwLD/WnNFhtrj7uxrUFV0mCj0tv3ELFa3acz9/HwrihOpJNeQ8n7zdv
 kdVsOQMnapI5h/bfgvW9yuUtPKNJLPET5wT7Wlqpffqis50FMLlp7VunFh6W+Wa1VvBbTN
 Bdm4SC+628BTkUbwlJsjGBeI2zvF+U4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-mOtB-_kLPb29C5VUCfBX7w-1; Tue, 11 Feb 2020 08:47:13 -0500
X-MC-Unique: mOtB-_kLPb29C5VUCfBX7w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C6231800D42;
 Tue, 11 Feb 2020 13:47:11 +0000 (UTC)
Received: from krava (ovpn-204-250.brq.redhat.com [10.40.204.250])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D54F5DA7B;
 Tue, 11 Feb 2020 13:47:06 +0000 (UTC)
Date: Tue, 11 Feb 2020 14:47:04 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 5/7] perf pmu: Support matching by sysid
Message-ID: <20200211134704.GB93194@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-6-git-send-email-john.garry@huawei.com>
 <20200210120759.GG1907700@krava>
 <63799909-067b-e5f4-dcf1-9ba1ec145348@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63799909-067b-e5f4-dcf1-9ba1ec145348@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_054725_485412_60BC87F8 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 04:22:56PM +0000, John Garry wrote:
> Hi jirka,
> 
> > 
> > > +		fclose(file);
> > > +		pr_debug("gets failed for file %s\n", path);
> > > +		free(buf);
> > > +		return NULL;
> > > +	}
> > > +	fclose(file);
> > > +
> > > +	/* Remove any whitespace, this could be from ACPI HID */
> > > +	s = strlen(buf);
> > > +	for (i = 0; i < s; i++) {
> > > +		if (buf[i] == ' ') {
> > > +			buf[i] = 0;
> > > +			break;
> > > +		};
> > > +	}
> > > +
> > > +	return buf;
> > > +}
> > > +
> 
> I have another series to add kernel support for a system identifier sysfs
> entry, which I sent after this series:
> 
> https://lore.kernel.org/linux-acpi/1580210059-199540-1-git-send-email-john.garry@huawei.com/
> 
> It is different to what I am relying on here - it uses a kernel soc driver
> for firmware ACPI PPTT identifier. Progress is somewhat blocked at the
> moment however and I may have to use a different method:
> 
> https://lore.kernel.org/linux-acpi/20200128123415.GB36168@bogus/

I'll try to check ;-)

> 
> > > +static char *perf_pmu__getsysid(void)
> > > +{
> > > +	char *sysid;
> > > +	static bool printed;
> > > +
> > > +	sysid = getenv("PERF_SYSID");
> > > +	if (sysid)
> > > +		sysid = strdup(sysid);
> > > +
> > > +	if (!sysid)
> > > +		sysid = get_sysid_str();
> > > +	if (!sysid)
> > > +		return NULL;
> > > +
> > > +	if (!printed) {
> > > +		pr_debug("Using SYSID %s\n", sysid);
> > > +		printed = true;
> > > +	}
> > > +	return sysid;
> > > +}
> > 
> > this part is getting complicated and AFAIK we have no tests for it
> > 
> > if you could think of any tests that'd be great.. Perhaps we could
> > load 'our' json test files and check appropriate events/aliasses
> > via in pmu object.. or via parse_events interface.. those test aliases
> > would have to be part of perf, but we have tests compiled in anyway
> 
> Sorry, I don't fully follow.
> 
> Are you suggesting that we could load the specific JSONs tables for a system
> from the host filesystem?

I wish to see some test for all this.. I can only think about having
'test' json files compiled with perf and 'perf test' that looks them
up and checks that all is in the proper place

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
