Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280EE157D58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oREePFaJbkbNT5+YHMMoFGTbrx1oZhiWErLblGuqnDM=; b=WcM6Na9XrslidE
	mxIzzGtodk0zR7wkwpyKQ/BNkJUJE3gSDTmmG3rLZW6WbeYnwNgH3XwVOySxIUCDgJiEdwHWXAX8/
	5JQSORglUSqmCImGn13v5X7TjGr7UsZ1PSYoUCi+mhj4nSuJO71c/mSik7n90i/ZShTshGunFobof
	iDVzdMOAnxd9umd3uTnQQz5G7VSD/3C2hfANF0DVI+Fq/as5mmsEcCtkRxyhuVnG1AWqmaKgcruQr
	uJIJ3NkMkp0i3IuGFAF1BZtg6RWcObIwGc/y56mhziKLzxhmBQ9B67dHNf0+58QfbQaBPyHh54Qd6
	wAYYZgmUOk1vtHMgaaQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1A0z-0000tR-8T; Mon, 10 Feb 2020 14:26:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1A0r-0000t4-Vw
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581344770;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/PJa8ZTV8s4bvQ8gnVuKZHg2Z4/GRqTI9Yenrr72BM0=;
 b=SvS7DlrdpbruMVPMXYSVINrXyjbXSZgLrmcFiIwyUax4jAfeaIzd+9plG89U9JpFndT2OQ
 yhRjqKc27BHo1eVjdyYN4KnmfwBAiiknH0QkQCo7jcYlXHAt4BO5HZn3AbwwPMpvlKZ0Hq
 /VFdcovW6qU9x1p7mZ13u4C8CKTMuDc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-BaAQooWwM82-Cyxf1tWiGQ-1; Mon, 10 Feb 2020 09:26:08 -0500
X-MC-Unique: BaAQooWwM82-Cyxf1tWiGQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1857E1005502;
 Mon, 10 Feb 2020 14:26:06 +0000 (UTC)
Received: from lacos-laptop-7.usersys.redhat.com (unknown [10.36.118.180])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4C4EF1001281;
 Mon, 10 Feb 2020 14:26:03 +0000 (UTC)
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <43362e18-eddc-9903-0e63-9d3eebe70313@redhat.com>
 <CAKv+Gu89o4oJEJvJMuE68HM5NDgokQ0W-D7YQB6xOX2EbhYYBw@mail.gmail.com>
From: Laszlo Ersek <lersek@redhat.com>
Message-ID: <edddcef9-6ed6-9b16-cce1-8e1c08b781a1@redhat.com>
Date: Mon, 10 Feb 2020 15:26:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu89o4oJEJvJMuE68HM5NDgokQ0W-D7YQB6xOX2EbhYYBw@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_062614_105848_79EE42E7 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/07/20 13:36, Ard Biesheuvel wrote:
> On Fri, 7 Feb 2020 at 09:48, Laszlo Ersek <lersek@redhat.com> wrote:
>> On 02/06/20 15:03, Ard Biesheuvel wrote:

>>> +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
>>> +                                  unsigned long *load_size,
>>> +                                  unsigned long max)
>>> +{
>>> +     efi_guid_t lf2_proto_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
>>> +     efi_device_path_protocol_t *dp;
>>> +     efi_load_file2_protocol_t *lf2;
>>> +     unsigned long initrd_addr;
>>> +     unsigned long initrd_size;
>>> +     efi_handle_t handle;
>>> +     efi_status_t status;
>>> +
>>> +     if (!load_addr || !load_size)
>>> +             return EFI_INVALID_PARAMETER;
>>> +
>>> +     dp = (efi_device_path_protocol_t *)&initrd_devpath;
>>> +     status = efi_bs_call(locate_device_path, &lf2_proto_guid, &dp, &handle);
>>> +     if (status != EFI_SUCCESS)
>>> +             return status;
>>> +
>>> +     status = efi_bs_call(handle_protocol, handle, &lf2_proto_guid,
>>> +                          (void **)&lf2);
>>> +     if (status != EFI_SUCCESS)
>>> +             return status;
>>> +
>>> +     initrd_size = 0;
>>> +     status = efi_call_proto(lf2, load_file,
>>> +                             (efi_device_path_protocol_t *)&initrd_devpath,
>>> +                             false, &initrd_size, NULL);
>>
>> The second argument to EFI_LOAD_FILE2_PROTOCOL.LoadFile() is "FilePath",
>> specified as "The device specific path of the file to load". This means
>> it is supposed to be a (possibly empty) sequence of FILEPATH_DEVICE_PATH
>> nodes, terminated by and "End Entire Device Path" node. See
>>
>> - 10.3.1 Generic Device Path Structures
>> - 10.3.5.4 File Path Media Device Path
>>
>> in UEFI-2.8.
>>
>> And "initrd_devpath" is not a device path like that; instead it's the
>> VenMedia device path that's installed on the handle that also carries
>> our LoadFile2 instance.
>>
> 
> OK, so you are saying this could be used to disambiguate which of
> several files you may want to load from the initrd GUIDed device path?

Yes, exactly.

>> Now, I do see that this all theoretical here, as we don't expect the
>> LoadFile2 instance that we've found via our special
>> LINUX_EFI_INITRD_MEDIA_GUID VenMedia devpath to do *any* device-specific
>> filename / pathname parsing.
>>
>> But in that case (i.e., given that the FilePath argument is totally
>> irrelevant), I think it's much clearer if we simply pass an empty device
>> path -- one that consists of a single "End Entire Device Path" node.
>>
>> I've checked, and your ArmVirtQemu patch ignores the FilePath argument
>> too -- justifiedly so. I just think it's better to pass in a well-formed
>> device path, rather than NULL. Because, the FilePath parameter is not
>> marked OPTIONAL in the spec.
>>
> 
> One thing that occurred to me is that we have to decide whether we
> want to support the '10.3.5.8 Relative Offset Range' device path node
> for this file, so that you could potentially load subranges of the
> file. I don't see a use case for it right now, though.

Agreed, it doesn't seem necessary / justified.

> But for my understanding, would the FilePath passed to LoadFile2 be
> 'Offset(...)+EndEntire' in that case? Or should it include the GUID
> device path node as well?

I see the only specified, concrete use case for the Offset() devpath
node in "14.4.2.1 PCI Bus Driver Responsibilities". I think it doesn't
apply at all to our use case.

Also, according to "10.3.5.8 Relative Offset Range",

    This device path node specifies a range of offsets relative to the
    first byte available on the device.

In that sense, it seems like a (mutually exclusive) alternative to
FilePath. Given a device, one would specify *either* an offset range
(which is relative to the start of the device, when the device is viewed
as a range of bytes), *or* a FilePath (which is "relative" to the device
when viewed as a store of named files, but still not as a full-blown
random-access filesystem).

In brief, Offset() doesn't seem to apply in connection with LoadFile2,
at all. Certainly not in our particular use case, I'd suggest.

[...]

Thanks!
Laszlo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
